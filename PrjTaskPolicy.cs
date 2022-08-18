using System;
using System.Activities;
using Microsoft.Xrm.Sdk;
using Microsoft.Xrm.Sdk.Query;
using Microsoft.Xrm.Sdk.Workflow;

namespace Project.Operation.Hani.Adel.PrjTask
{
    public class PrjTaskPolicy : CodeActivity
    {
        [Input("Task ID")]
        [ReferenceTarget("msdyn_projecttask")]
        public InArgument<EntityReference> TaskID { get; set; }

        [Output("Task Duration")]
        public OutArgument<Double> TD { get; set; }

        [Output("Exceed or not")]
        public OutArgument<bool> Exceed { get; set; }

        protected override void Execute(CodeActivityContext executionContext)
        {

            IWorkflowContext context = executionContext.GetExtension<IWorkflowContext>();
            IOrganizationServiceFactory serviceFactory = executionContext.GetExtension<IOrganizationServiceFactory>();
            IOrganizationService service = serviceFactory.CreateOrganizationService(context.UserId);

            EntityReference TSKID = TaskID.Get<EntityReference>(executionContext);
            string TSKIDStr = TSKID.Id.ToString();

            Exceed.Set(executionContext, false);

            string xml = "<fetch distinct='false' version='1.0' output-format='xml-platform' mapping='logical' no-lock='true' aggregate='true'>" +
                             "<entity name='msdyn_timeentry'>" +
                                   "<attribute name='msdyn_duration' alias='dursum' aggregate='sum' />" +
                                     "<filter type='and'>" +
                                           "<condition attribute='msdyn_projecttask' operator='eq' value= '{" + TSKIDStr + "}' />" +
                                     "</filter>" +
                             "</entity>" +
                         "</fetch>";

            EntityCollection result = service.RetrieveMultiple(new FetchExpression(xml));
            Int32 rn = 0;
            foreach (var c in result.Entities)
            {
                Int32 totalCurrentYear = ((Int32)((AliasedValue)c["dursum"]).Value);
                rn += totalCurrentYear;
            }

            string xmlTsk = "<fetch distinct='false' version='1.0' output-format='xml-platform' mapping='logical' no-lock='true' aggregate='true'>" +
                 "<entity name='msdyn_projecttask'>" +
                       "<attribute name='msdyn_effort' alias='Tasky' aggregate='sum' />" +
                         "<filter type='and'>" +
                             "<condition attribute='msdyn_projecttaskid' operator='eq' value= '{" + TSKIDStr + "}' />" +
                         "</filter>" +
                 "</entity>" +
             "</fetch>";

            EntityCollection TSKresult = service.RetrieveMultiple(new FetchExpression(xmlTsk));
            Double efo = 0;
            foreach (var c in TSKresult.Entities)
            {
                Double totalCurrentYear = ((Double)((AliasedValue)c["Tasky"]).Value);
                efo += totalCurrentYear;
            }

            Int32 conVefo = Convert.ToInt32(efo) * 60;

            //TD.Set(executionContext, conVefo);
            TD.Set(executionContext, efo);

            if (rn > conVefo)
                Exceed.Set(executionContext, true);

        }
    }
}
