<#global pagecrumbs="<li class='breadcrumb-item active'>Home</li>">
<#include "common-header.ftl">

  <h1>${service.title!"GeoServer STAC 1.0 Service"}</h1>
  <p class="my-4">
    ${service.abstract!""}<br/>
    This is the landing page of the SpatioTemporal Asset Catalog ${model.stacVersion} service, providing links to the service API and its contents.<br/>
    This document is also available as
    <#list model.getLinksExcept("landingPage", "text/html") as link><a href="${link.href}">${link.type}</a><#if link_has_next>, </#if></#list>.
  </p>
      
  <div class="row my-3">
    <div class="col-6 col-xl-3">
      <div class="card h-100">
        <div class="card-body">
          <h2>API definition</h2>
          <p>The <a id="htmlApiLink" href="${model.getLinkUrl('api', 'text/html')!}"> API document</a> provides a machine processable description of this service API conformant to OpenAPI 3.
          <br/> 
          This API document is also available as
          <#list model.getLinksExcept("api", "application/json") as link><a href="${link.href}">${link.type}</a><#if link_has_next>, </#if></#list>.
          </p>
        </div>
      </div>
    </div>
    
    <div class="col-6 col-xl-3">
          <div class="card h-100">
            <div class="card-body">
              <h2>Search</h2>
              <p>The <a id="searchLink" href="${model.getLinkUrl('searchGet', 'text/html')!}"> search page</a> provides a searchable list of all the STAC items available in this service. 
              <br/> 
              The search page is also available as
              <#list model.getLinksExcept("searchGet", "text/html") as link><a href="${link.href}">${link.type}</a><#if link_has_next>, </#if></#list>.
              </p>
            </div>
          </div>
        </div>
    
    
    <div class="col-6 col-xl-3">
      <div class="card h-100">
        <div class="card-body">
          <h2>Collections</h2>
          <p>The <a id="htmlCollectionsLink" href="${model.getLinkUrl('collections', 'text/html')!}"> collection page</a> provides a list of all the collections available in this service. 
          <br/> 
          The collections page is also available as
          <#list model.getLinksExcept("collections", "text/html") as link><a href="${link.href}">${link.type}</a><#if link_has_next>, </#if></#list>.
          </p>
        </div>
      </div>
    </div>
    
    

    <div class="col-6 col-xl-3">
      <div class="card h-100">
        <div class="card-body">
          <#include "landingpage-conformance.ftl">
        </div>
      </div>
    </div>

  </div>

  <h2>Contact information</h2>
  <address>
    <ul>
      <li>Server managed by ${contact.contactPerson!"-unspecified-"}</li>
      <li>Organization: ${contact.contactOrganization!"-unspecified-"}</li>
      <li>Mail: <a href="mailto:${contact.contactEmail!''}">${contact.contactEmail!"-unspecified-"}</a></li>
    </ul> 
  </address>
<#include "common-footer.ftl">