prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>138059701325795433014
,p_default_application_id=>204925
,p_default_id_offset=>0
,p_default_owner=>'WKSP_EYAPEXLEARNING'
);
end;
/
 
prompt APPLICATION 204925 - Inventory Shortage Assistant
--
-- Application Export:
--   Application:     204925
--   Name:            Inventory Shortage Assistant
--   Date and Time:   04:31 Thursday June 18, 2026
--   Exported By:     VAISHNAVI.BHAT.KALYANPUR@GDS.EY.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     10
--       Items:                    4
--       Processes:                4
--       Regions:                 18
--       Buttons:                  2
--       Dynamic Actions:          1
--     Shared Components:
--       Logic:
--         Build Options:          1
--         AI Agents:              2
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   3
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_EYAPEXLEARNING')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Inventory Shortage Assistant')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'INVENTORY-SHORTAGE-ASSISTANT')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F29139E06E6F25F0DB349A02A8B8FE49B2A73A6ABEEE8F3403592D5BBD794D41'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(1273926998621904800)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Inventory Shortage Assistant'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Inventory Shortage Assistant'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260519052253Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461179064927
,p_version_scn=>'15770204101011'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_ai_remote_server_id=>153013979003842713644
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(1273927872677904802)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1273928626997904807)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_cohere_ai
begin
wwv_imp_workspace.create_credential(
 p_id=>153013978794136713644
,p_name=>'Credentials for cohere_ai'
,p_static_id=>'credentials_for_cohere_ai'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.cohere.ai/v2',
''))
,p_prompt_on_install=>true
,p_created_on=>wwv_flow_imp.dz('20260330063706Z')
,p_updated_on=>wwv_flow_imp.dz('20260330063706Z')
,p_created_by=>'TUSHAR.DHANUKA@EY.GDS.COM'
,p_updated_by=>'TUSHAR.DHANUKA@EY.GDS.COM'
);
end;
/
prompt --workspace/remote_servers/cohere_ai
begin
wwv_imp_workspace.create_remote_server(
 p_id=>153013979003842713644
,p_name=>'Cohere_AI'
,p_static_id=>'Test_AI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('Test_AI'),'https://api.cohere.ai/v2')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('Test_AI'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>153013978794136713644
,p_ai_provider_type=>'COHERE'
,p_ai_is_builder_service=>true
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('Test_AI'),'command-a-03-2025')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('Test_AI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('Test_AI'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('Test_AI'),'')
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260330063706Z')
,p_updated_on=>wwv_flow_imp.dz('20260514151331Z')
,p_created_by=>'TUSHAR.DHANUKA@EY.GDS.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273922504844904793)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273922825035904794)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273923166971904794)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273923431100904795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273923763238904795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273924018442904795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273924360823904796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273924640116904796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273924961551904797)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273925291472904797)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273925516228904798)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273925894272904798)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273926100323904799)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1273926471740904799)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/ai_agent/inventory_shortage_agent
begin
wwv_flow_imp_shared.create_ai_agent(
 p_id=>wwv_flow_imp.id(1384297234622046362)
,p_name=>'Inventory Shortage Agent'
,p_static_id=>'INV_SHORTAGE_AGENT'
,p_remote_server_id=>153013979003842713644
,p_system_prompt=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ROLE',
'You are an Inventory Shortage Assistant inside an Oracle APEX application.',
'',
'NON-NEGOTIABLE RULES',
'1) Use ONLY tool outputs for facts (quantities, dates, status, item numbers, orgs). Never invent.',
'2) Org handling:',
'   - If user gives org -> use it.',
'   - If user does not give org -> default ORG_CODE = ''NCO''.',
'3) Item handling:',
'   - For item-specific queries (demand/supply/replenishment) ITEM_NUMBER is mandatory.',
'   - If missing, ask for ITEM_NUMBER and stop.',
'4) Always call fresh tools. Do not reuse old tool outputs.',
'',
'ROUTING (detect intent and call the correct tool)',
unistr('Q1: \201Citem shortage / items in short supply / items that are short\201D for an org:'),
'   - Call shortage_summary_by_org(ORG_CODE)',
'   - Return columns exactly: Item, OpenDemand, AvailableToTransact, ExpectedSupplies, Shortage',
'',
unistr('Q2: \201Cwork orders with material shortage / partial\201D:'),
'   - Call wo_material_shortage_by_org(ORG_CODE)',
'   - Return columns: ItemNumber, WorkOrderNumber, PlannedCompletionDate, MaterialAvailableStatus',
'',
unistr('Q3: \201Cdemand details for item\201D:'),
'   - Require ITEM_NUMBER',
'   - Call item_demand_details(ORG_CODE, ITEM_NUMBER)',
'',
unistr('Q4: \201Csupply details for item\201D:'),
'   - Require ITEM_NUMBER',
'   - Call item_supply_details(ORG_CODE, ITEM_NUMBER)',
'',
unistr('Q5: \201Creplenishment options / availability / stock / substitutes\201D:'),
'   - Require ITEM_NUMBER',
'   - Call qty_details_in_org(ORG_CODE, ITEM_NUMBER)',
'   - Call availability_other_orgs(ORG_CODE, ITEM_NUMBER)',
'   - Call substitute_availability_in_org(ORG_CODE, ITEM_NUMBER)',
'   - Summarize options using ONLY those results',
'',
unistr('Q8: \201Cdemand at risk / insufficient lead time / compressed lead time / supply at risk\201D:'),
'   - Call demand_at_risk_by_org(ORG_CODE)'))
,p_version_scn=>'SH256:_u9ESS3UQOfX7y-QjlT-zMg0_cHrCSBxukIix3XN6DI'
,p_created_on=>wwv_flow_imp.dz('20260518114835Z')
,p_updated_on=>wwv_flow_imp.dz('20260519052253Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1385702545762081658)
,p_tool_name=>'item_demand_details'
,p_static_id=>'item-demand-details'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select',
    '  d.document_type,',
    '  d.document_no,',
    '  d.demand_status,',
    '  d.req_qty,',
    '  d.req_date',
    'from inv_demand d',
    'join inv_orgs o on o.org_id = d.org_id',
    'join inv_items i on i.item_id = d.item_id',
    'where o.org_code = :ORG_CODE',
    'and i.item_number = :ITEM_NUMBER',
    'order by d.req_date, d.document_type',
    'fetch first 500 rows only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115428Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115715Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1385703370394081664)
,p_param_name=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115428Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115428Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1385702841236081662)
,p_param_name=>'ORG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115428Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115428Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1384964893584713651)
,p_tool_name=>'item_lookup'
,p_static_id=>'item-lookup'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select item_id, item_number, item_name, uom_code',
    'from inv_items',
    'where upper(item_number) = upper(:ITEM_NUMBER)',
    'fetch first 1 row only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115055Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115055Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1384965173330713656)
,p_param_name=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115055Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115055Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1387090952929759367)
,p_tool_name=>'item_supply_details'
,p_static_id=>'item-supply-details'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select',
    '  s.document_type,',
    '  s.document_no,',
    '  s.supply_status,',
    '  s.supply_qty,',
    '  s.due_date',
    'from inv_supply s',
    'join inv_orgs o on o.org_id = s.org_id',
    'join inv_items i on i.item_id = s.item_id',
    'where o.org_code = :ORG_CODE',
    'and i.item_number = :ITEM_NUMBER',
    'order by s.due_date, s.document_type',
    'fetch first 500 rows only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115832Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115832Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1387091775156759372)
,p_param_name=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115832Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115832Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1387091216911759371)
,p_param_name=>'ORG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115832Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115832Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1384750757815055349)
,p_tool_name=>'org_lookup'
,p_static_id=>'org-lookup'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select org_id, org_code, org_name',
    'from inv_orgs',
    'where upper(org_code) = upper(:ORG_CODE)',
    '   or upper(org_name) like upper(:ORG_CODE) || ''%''',
    'fetch first 1 row only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115005Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1384752261118055355)
,p_param_name=>'ORG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115005Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115005Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1385233055095068065)
,p_tool_name=>'shortage_summary_by_org'
,p_static_id=>'shortage-summary-by-org'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select',
    '  material as item,',
    '  openquantity as opendemand,',
    '  availabletotransact,',
    '  expectedsupplies,',
    '  (openquantity - (availabletotransact + expectedsupplies)) as shortage',
    'from v_material_assignment_summaries',
    'where org_code = :ORG_CODE',
    'and (openquantity - (availabletotransact + expectedsupplies)) > 0',
    'order by shortage desc',
    'fetch first 200 rows only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115212Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115212Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1385233393721068069)
,p_param_name=>'ORG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115212Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115212Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool(
 p_id=>wwv_flow_imp.id(1385302690627727375)
,p_tool_name=>'wo_material_shortage_by_org'
,p_static_id=>'wo-material-shortage-by-org'
,p_tool_type=>'NATIVE_RETRIEVE_DATA'
,p_execution_point=>'ON_DEMAND'
,p_requires_confirmation=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select',
    '  i.item_number as itemnumber,',
    '  w.wo_number as workordernumber,',
    '  w.planned_completion_date as plannedcompletiondate,',
    '  case m.material_available_status',
    '    when ''ORA_P'' then ''Partial''',
    '    when ''ORA_N'' then ''NO''',
    '    else m.material_available_status',
    '  end as materialavailablestatus',
    'from mfg_work_orders w',
    'join inv_orgs o on o.org_id = w.org_id',
    'join mfg_wo_material_avail m on m.wo_id = w.wo_id',
    'join inv_items i on i.item_id = m.component_item_id',
    'where o.org_code = :ORG_CODE',
    'and m.material_available_status in (''ORA_P'',''ORA_N'')',
    'order by w.planned_completion_date, w.wo_number',
    'fetch first 200 rows only')),
  'type', 'SQL_QUERY')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518115312Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115312Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_ai_agent_tool_param(
 p_id=>wwv_flow_imp.id(1385302931237727379)
,p_param_name=>'ORG_CODE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_created_on=>wwv_flow_imp.dz('20260518115312Z')
,p_updated_on=>wwv_flow_imp.dz('20260518115312Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/ai_agent/ai_for_item_application
begin
wwv_flow_imp_shared.create_ai_agent(
 p_id=>wwv_flow_imp.id(1283935384300073025)
,p_name=>'AI For Item Application'
,p_static_id=>'ai-for-item-application'
,p_remote_server_id=>153013979003842713644
,p_version_scn=>'SH256:Nu_-mK7Xxqk2nzOWJolKBO-bThNN0v6Cqs3XzqOILPo'
,p_created_on=>wwv_flow_imp.dz('20260518071729Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071738Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1273928626997904807)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1273941885370904827)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1273942447358904827)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(1273941885370904827)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1273942940315904828)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(1273941885370904827)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1273927872677904802)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:bzv-lclBusKFFQ9ACe4ItoheWdW-n9jp3rSFFv0XJRg'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121246Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1390965217158191456)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Chat Assistant'
,p_static_id=>'chat-assistant'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260518121246Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121246Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1382896922823676728)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Demand at Risk'
,p_static_id=>'demand-at-risk'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20260518114446Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114446Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1273939246117904821)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1301308166950821831)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Item Demand Details'
,p_static_id=>'item-demand-details'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260518082429Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082429Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1321698462347238401)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Item Supply Details'
,p_static_id=>'item-supply-details'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20260518093355Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093355Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1280454391160995565)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Items in Shortage'
,p_static_id=>'items-in-shortage'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260518070434Z')
,p_updated_on=>wwv_flow_imp.dz('20260518070434Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1375761182470956080)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Replenishment Options'
,p_static_id=>'replenishment-options'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20260518113332Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113332Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1289683298366208982)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'WO Material Availability'
,p_static_id=>'wo-material-availability'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20260518074008Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074008Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D69701CC7757E3D7B018B9BB8098AE14DDCA08A4A225170405CB4E88AE54A7E2872E298AA72F483AA544A7194384755E2B8EC3FAEB22DFD';
wwv_flow_imp.g_varchar2_table(2) := 'B04C5BFE61BBFC4725D992CC324D8A3896B4088A244802A04850A675930471120771EF4EFBBDDE85B404B1CBDD99D963667A6BDE4C6F4FF77BAFBFF7B17BBA7BB054407E24023A109004D2019EAC0A20092459A00B0149205DF0C9CA92409203BA109004';
wwv_flow_imp.g_varchar2_table(3) := 'D2059FAC2C092439A00B01CD04D2655556B60C0292409609656A1A2209941ADC2D635512C832A14C4D4324815283BB65AC4A02592694A9698824506A70B78CD5E4132806E876BEF1464E75777759EDA9CEAD355D5D0DBB4E74EEA9F575B4D7FB3ABF6807';
wwv_flow_imp.g_varchar2_table(4) := 'A1B6529BA9ED8401614198C4005DD28BA496409CB3BAEE6395F5DD1D07EABB3A5FC46B2FCA9227376BDA0981216589FFD1C1D43E55E5A7140E6F02E7BFB183505BA9CDD476C280B0204C081B94DE7A5FC70FF17A80B0433C58D259136630A9047AF0E491';
wwv_flow_imp.g_varchar2_table(5) := 'E2FAAEAEC71180EF2000C7EB7D9DB719380601E067C0F84100D88DE24291C7DA081036BB81C33378FB670CB1230C0596DDC7BF8DE92FD61C3DBA0E92F8491E81B0B7F1FB5D7B98A27E0301F86F6C631B4A1E8A3CF42140182296EC7F80ABDF707A9C7B00';
wwv_flow_imp.g_varchar2_table(6) := 'B1D6A732F6DA0927D0EEDE5E579DEFF8D3F5273AAF32C65EE71CF6C4EE9E2C191F02EC510E70B8DED73988BDD2D708FBF8EAC75F3AA1046AE8ECAC589E993CCD38FB09F63A3BE2774FD6D088C04EACF753C4BE871E1B309DB02361047AB0A3A39A2BFC0C';
wwv_flow_imp.g_varchar2_table(7) := '7A4ECF357891470A10782810709F6EE8EAAA4994ED8410A8A1FB7863C0013DE874058A418754A31181AD9CA9A7EABADE6CD2583F6A35C309247A1EC68EA1557AB8C38B3CD200813CA628471A12D013194AA0DD870F7BFD4E78059F77BC69009A74211C01';
wwv_flow_imp.g_varchar2_table(8) := '0E5EEC895EA6188567EB4D1B4AA0E5ECCC1719876ABD4EC9FA0943A0866264A476C30854D7DDF9143A7600451EE98D00AE608B5819E2A521047AA4A7279301FFBE211E492509478031FE3DA38632430834B7384F3D4F41C25B2E0D1883008775FE6CEF57';
wwv_flow_imp.g_varchar2_table(9) := '8D50A69F409CE3630F7FD6086712A443AA5D03010EFC5F8CD8F2D04DA07A5FE7E7D13F5AF9C48B3C4C8440552876BA5CD64D20B4FE2C8A3CCC8980EED8E922D0A6EEEE0C5CF369372776D26B8A1D4D80F420A18B40F9E07F1818E8D201F2933A041828F3';
wwv_flow_imp.g_varchar2_table(10) := '8BB37F093A3EBA82CF011ED6615B564D0304F4C65027819824501A90408F0B1CF4C5503B8170FA8E8E37A258F6B049C37475029A0954EDF39522C08528F2303702A5951D1D9AE3A899402ECE351B3537DED6F3DEA328655A5BA599404C51E52B1B5A514F';
wwv_flow_imp.g_varchar2_table(11) := 'B37A7A62A9994001551228CD78A0D91D3DB1D44C20C6944CCD1ECB8A69850003A753AB43DA09C4B91CC2B4A29E6EF5984A7FB0A8C92BCD045219933D5024C84D96CF7474069A0904C034B3164CF2591E1F071293B8ABD94D3D9D81660229C0FD9A3D3641';
wwv_flow_imp.g_varchar2_table(12) := 'C5A5A15BE047029150DA042EA7C445CD044A89B74932BA74F3260466A6A1BCB04808A59786869264DD5C66248156C56BF1FA0D08DCB903857905D0545525A428BF000935034B376EAC2A2DBF4A02857160E9D62D50E766212F3B1B5A6B6BC0A928425A6A';
wwv_flow_imp.g_varchar2_table(13) := '6A202F271702B3B34065407E3E454012280485FFF66D084C4F436E5636B4D73780DBE108DD01916EAFAD83EC4CAF28E39F9CFCF49EDD139240C8001AB2964747C19B9189E4A9878C35D6D5325C4ED8B76B9728B33C320281B939AC69F4613E7DB627100F';
wwv_flow_imp.g_varchar2_table(14) := '0470581A06FA9DB8E6BA3AC874455E9DF0E2BDA6DA5A608CC1323E54535DF385DC588F6D4F203145570350BB652B1464DE7F6DB4D0EB85EA4D9B80C8B33C3C6C6C344CA8CDD604F24F4D7DFAD05CB73EF65FA269A87800F2F0598986BEC0CC8C09C36E9C';
wwv_flow_imp.g_varchar2_table(15) := 'CBB62590E84146C740C1E1A8B1AA1A148506B1D880A5B28D55554035E87988AB6A6C152D58CAB604A215661043D7969886AED5B12FC0A18C863D22A2D0B5BA804DBEDB9240EAE222D0543CC3ED86E2DC3C18C1E9BB1629C9CD05B7CB0DB404C0FD96DED9';
wwv_flow_imp.g_varchar2_table(16) := '89F8CFC19604F28F8D0940169696A0F3E20578B3EFA226E9C47A4BCB4B42D7320E8722919A53CAACDA8E401C49432BCADB4B4BE1993D8D86C8B6925208E0DE991D7B21DB1188862EFAE7FA95FA5DF0343E3C1B215F6968209540B33A91B0D149B1515B01';
wwv_flow_imp.g_varchar2_table(17) := '38C7204F8313B729DA2B3618D674D2453A03B82C6098529328B21581FCF8B00C5C85961D3B21134964548CBC0E27ECDDB61D6808A3B521A3F49A418FAD08A4DEB92362F2055C75168908A7599C51FD78F0323CF7D649213FC134E545282EB2F76FDD26AE';
wwv_flow_imp.g_varchar2_table(18) := '924002060B9E70F8A20DD01CDC306D2A2B8FD8C06BF830FC37BF7E050EF59C82CE77AF0AF911A629EFBD28ABCE2DE5EB21CB9301EAEC6C44DD56BC619B1E88665E80247AACB232621C0338BCFDA7AF0B6EE34EFBDFFFF95FC0B7F77F01BEF5D87EA034E5';
wwv_flow_imp.g_varchar2_table(19) := 'FD97AF1BA84C2405FB50372D2CAA0B0B918AA45DBE5E876C4320756E5E60B57FF356715DEBD43B3E0EEF8F8C400B12A1BAB81800B7391445014A53DEB5915BD0373101913EFB376F11B75424A048D8E0641F022D2D8A703EB86E9DB8AE75BA36795B6497';
wwv_flow_imp.g_varchar2_table(20) := 'E5E48A6BF8E973A1CDD66B51665AF5F905A28ABA185C5C145F2C7EB20D81386E5F1478B3A286B3109F8FA8C09C7F992E77497FA8E759E7F1DC951FFEC58333BB6C4F26A821B286DFB36ADA1604A2E9353D9B14E564478D637D61F00747FA3EFEE49E727D';
wwv_flow_imp.g_varchar2_table(21) := '9F601E0E690D8545F7DC0BCF28CAC9028EABDDF4BC159E6FD5B46D0844012CF246275045A6179E7E640FFC7164187E70F204BC8EB3B0D7AE0E8A34E53DF3C8A3509A9141AA224A49768E58B024C2462C64A11BF62050E87D9DE2ECE84318C5F560550D3C';
wwv_flow_imp.g_varchar2_table(22) := 'FBB926989A9F87DEF7DE83F3EFBF0FD398FEFA5F35C13F55565191A852141A262581A2C264B29B818070985E4715892827C6181CC095EA734F7D0D5E7EE24978F5EFBE0C6F7DF529F8C7ED3B715246AF9045A98CB7566C589E40D8563A6CD5039578E3FB';
wwv_flow_imp.g_varchar2_table(23) := '41911D381BDB8A43925B71105631497156C84688B431553271215B1068253E2A2E24AEA413755520D44B25C156A2DA108F5E259EC2662DCB7031907C1F4DC202DFE85C682B038742B26975B105812044A0B1D9C4FF31E0E88A0D5C13B23A79A87DB62010';
wwv_flow_imp.g_varchar2_table(24) := '0B05736CA577A0962748566CACD84C9099B4516B0B02D14BEF84F8E86CF0750E4A274A46EE04FF4ECC3F11DC1649949D74D16B79022D0D0D4120F41AC658E81A2BF867C7468124D6F2546E783A48A0C0CC3488BF7AA54C0B4BFC04321118C11F8A9A818D';
wwv_flow_imp.g_varchar2_table(25) := 'A565B00177D7697170388E572DFEB7BB0BBEE9EB8EB9C543B8E0388FFB60648B6C06493414737D3316B42681700A4D3F06456F075620711AB7EF808AD01ED619DCA688355034ED8FF6FECF6A3D3DC3B744D606B4256CA2ED00F67A4464ABEE8D59924062';
wwv_flow_imp.g_varchar2_table(26) := 'D89A9D85F2A26268C2ED07456150919F2F827BFAC675714DC4E9EDEBB8E18A8A371414E0C48F09DBE545454044269FF096E50ECB11C83F312102568A41DC5B59094A683DC6EB76435E4E0E9CC2BDAD44F406D45B91EE75B97990E10AFE440CD9260217E7';
wwv_flow_imp.g_varchar2_table(27) := '17089FC837AB31C85204A23F59A69FE5F5E28E7953750D3894BB9B47C3D8CCC23C5C999E323C8EEF4CDE86F9E525588F3D4EB872FA99BCE6EA6AF07A3CE22783C5AB1EE1054C9EBE1B613337869E7B70C645BD4B230E5BE13F51B7D2AC0DA1B7114F53B9';
wwv_flow_imp.g_varchar2_table(28) := '954C83AE6FDF0A3E2C5760CFB75AA5DBE9848777568AD73C16C936FABABA8C59BF5B86402ACE80E85F77616E3ED08F1EAC1590E2AC2C70395D7078701079C6D72AA2298F1EB45FBF7C59E8261B6B29599F9F2F86507A33D24A2FDD2791406BC16A5C9EBA';
wwv_flow_imp.g_varchar2_table(29) := '1C7C0DB5040315492B630C765454C047136370ECA6713FD9FBBBEBD761686A12763EF04024D322BF2CD43BF190AF22D3E427CB1068252825F979514352B56103381C4E3874F6AC21BD10C7E1E8C5B36744EF53BD7E7D54DBA57941DF56C81EB5B0496E5A';
wwv_flow_imp.g_varchar2_table(30) := '8740A1F76FB270B6150DFB0CDC17ABDDB449F442C7876E462B1AD3BDA337B1F7C10768D2B9D67357B8926C4FE875D890AFE1F7CC9AB60C81E209405579B9986ABF74BE573CD8C65337BC2CF53ED4936522312ACBCAC26F454D53BDA8054C74D39604A2A9';
wwv_flow_imp.g_varchar2_table(31) := '75EDE62DE2E5F9AED0EC494BCCA807FB78621CEA366F0687624B28C19EAD46B6EC2829156B33DF7DEB244C6978A89DC63ADFFDFD09F1C3E3DB70C51B55DAF2B02D8168EA9DE9C984E1E969F88F93BEB886321A82FEED840FC6EFDC1124245DF1B0873116';
wwv_flow_imp.g_varchar2_table(32) := '4FF1B42E6B0602190EE0BCDF0F470706607C7A124071C0D90F3F8097AE0EC66CE7D0E065E8FDE80351776C6A52E8229D312BB05041DB116812171C7F77E1024CCD4C8323371732366F02868B8B3FEA790B2EE0F3CCFD624BEF07BD74BA47D4A1BAA48374';
wwv_flow_imp.g_varchar2_table(33) := '91CE99C5C5FB5517F7A90713090B9C6C4520FA29DFA3172FC2DCC23C380B8BC08D33277AF5D4BDBE1C685DFAEB478FC02DBCF7595C39AE157DF6EDC6FC1C3C77ECA828EBAE580FA22EEA205DA4F3C8F9F3303A3BFB59850829C658843BE6CBB60D813EBE';
wwv_flow_imp.g_varchar2_table(34) := '3D011DFD7DE0F72F831BA7F1AEC2759F464BC1CD5722C114F64E5F7EED57F0FC401FBC347805EE2C2EA12C8A34E5FDC3EBBF06DA8C75E186A9829BA32B0A4817E95C46DD1D17CE03D95AB967F5AB2D087405170C4F5EBA042A53C083DB0D8E9C9C7BE24A';
wwv_flow_imp.g_varchar2_table(35) := '24701616C2E4DC1CFCFCDC59781187347ABB9084D2943785F7A88C33B4291BAE847492EE00DA205B57A32C0FC8212C1CB9344F9FFBE003B870ED5AF09965E303A044F91F795C48A08C6DDB04C93CB8E541431409A53D1B3702DDA332919A4CBA33D006C3';
wwv_flow_imp.g_varchar2_table(36) := 'DDF7DE3FFC01C8F65A6519636B659B32CFB23DD002CEB4BAAF5C81773FF918145C29F6FCD94660F7D9E6A008325C102422285E2F00051A85D234CCD13DB8CF876C10D9C826D9F6E150B888BEDCA79A696F5B8E40477ACFC12F4F9E80577B4EC18DB15131';
wwv_flow_imp.g_varchar2_table(37) := 'D3F250AF807B60C98A12F54064D391930BD74747E1959E53C227F22D593E24CB8E6508E4C0A149F414D87338B2B2C0999F0F34F4D04C4BF4241A10756467038986AA4036DDE565E0C6A1907C51BC59A0A06F42D057B0C8473B81384FFCDF09C70132ADC7';
wwv_flow_imp.g_varchar2_table(38) := '106148DC1515E02A2911018B43C53D454907C93D37E2C870206948876743852034F9470FDC71A848785185F379AD4634138833965604D20A80AC87BB383A62A99D405CD5CC5A19B4F44280EB88A56602391445F640E9C503CDDEE889A566027155124873';
wwv_flow_imp.g_varchar2_table(39) := 'C4D2ACA29E586A2690AA5A78084BB30027DA1D3DB1D44CA080C32187B044473649FAF5C4523381327372C6B17D0B28F23037020BA1586A6A8566029D7FE8A165007606E4C7E408B033C1586A6B86660205CDA9BEE0559ECD8B80BE18EA2210569604322F';
wwv_flow_imp.g_varchar2_table(40) := '7384E77A6388F5851E4DA74970BE8D15E573108260D263211443CDEEEB22D087CDCD0B68F90D147908044C777A231443CD8EEB2250D02A7F3E789567F321A03F76BA0934D0DC8EC31897B331D3B1879F09C64E9FE3BA091434CF642F1404C24467636266';
wwv_flow_imp.g_varchar2_table(41) := '0881D681E355442E71BF5E89CAE5612802374231D3ADD41002F99A9BFD9CF37FD6ED8D54901C04183B483133C298210422472EB5B4D36CEC054A4B496B045E18D8DB7AD8280F0D231039E4CAC9FF770E708ED252E24220298531363E8A9191C60C2510ED';
wwv_flow_imp.g_varchar2_table(42) := 'A938C0F1043A3889228FF442609807E0498A91916E29462A235D7DCDCD1F3285B760FA43142174D617000002074944415479A407021F05B8F2F977DADA868D76C770029183FD4DED179702F010A63B50E4914A041874612C765F6E69E94F841B09211039';
wwv_flow_imp.g_varchar2_table(43) := '7AB5AD6D7CE7E8C46300FC107D97921204BEB77364621FC52251D613462072F895279E080C34B71F64C00E028325CA93921404E619C09303CD6DCF510C126931A1045A71BCBFB9F5100BB02D8CC3FF61DE2728F2480C02B898CBBEC954B6BDBFB9EDE5C4';
wwv_flow_imp.g_varchar2_table(44) := '98B85B6B52084426FB5B5B6FF4B7B47D0B87B5CD8CB1BFC5BC632838B3C4B33C3423801503288715CEFF1AB1DD34D0DCFAFF8435E625E5481A81565A435D6AFFDED6D7069ADB1E73F97901575913DE7B16E5E7289750FC28F2581B01C2E6123E0EFC0280';
wwv_flow_imp.g_varchar2_table(45) := 'FD2BE7EADE4557460162F9785F4BFB6F095B48F227E9040A6FDFF9F6F6A94BADAD27118017509E42A947712D4ECFE6FAC151AEBAD9369C7EEE5214F6A8CA601F30F6B81D84DA4A6DA6B6130684056142D8A0D40FEC6D3B803DCDF3975AF69D78B7B17126';
wwv_flow_imp.g_varchar2_table(46) := '1CD364A7534AA0488D7DF74B5F9AB9D2DC7CEB9D475BDFA3E9675F536BCF3B7BDB8E0FE012BC1D84DA4A6DA6B613068405611209AF54E6A72581520988B41D1F029240F1E1254BAF424012681520F26B7C084802C58797754A1BD41249208380B4AB1A49';
wwv_flow_imp.g_varchar2_table(47) := '20BB46DEA0764B021904A45DD54802D935F206B55B12C82020EDAA4612C8AE9137A8DD92400601691F3577B75412E86E3CE4B7381190048A133059FC6E04FE040000FFFFDA13651D000000064944415403006C00D08A4BC78CF40000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(48) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1273930057282904810)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701CC7757EBBC0E25A10002102200912377896049296A94824EDC4B16447499C1F51C2942B5795AB5295FCB1F427299755F9958A2B87';
wwv_flow_imp.g_varchar2_table(2) := '62FD723929FB87632AAE541247B24A6249A42D9E3E041E92785FE201F000C11337B097DFEBDDEEE95DEC626676677767761E0A3DF3BAFBF5EBD75FF737D3D3736CF0A90FF6273830067E1D0341E03F46C0C70830017CDCF9DC740026008F025F23C004F0';
wwv_flow_imp.g_varchar2_table(3) := '75F773E37D4C00EE7C4680A7403C067C8E009F017C3E00FCDE7C2680DF4780CFDBCF04F0F900F07BF399007E1C01DC668500134041C1821F116002F8B1D7B9CD0A0126808282053F22C004F063AF739B15024C0005050B7E4020B38D4C804C4438EE2B04';
wwv_flow_imp.g_varchar2_table(4) := '9800BEEA6E6E6C26024C804C4438EE2B049800BEEA6E6E6C26024C804C4438EE2B047C44005FF52B37D622024C008B40B15A6522C004A8CC7EE5565944800960112856AB4C04980095D9AFDC2A8B0830012C02E56935763E27024C809CD070861F106002';
wwv_flow_imp.g_varchar2_table(5) := 'F8A197B98D39116002E4848633FC800013C00FBDCC6DCC8900132027349C51090898B58109608610E75734024C808AEE5E6E9C19024C00338438BFA21160025474F772E3CC1060029821C4F9158D400513A0A2FB8D1BE710024C0087806433DE448009E0';
wwv_flow_imp.g_varchar2_table(6) := 'CD7E63AF1D428009E010906CC69B083001BCD96FECB5430830011C02D25566D819CB0830012C43C58A95880013A0127B95DB641901268065A858B1121160025462AF729B2C23C004B00C152B7A0101BB3E3201EC22E6907E221A85F9D151114876C82C9B';
wwv_flow_imp.g_varchar2_table(7) := 'B1890013C026604EA827221198BF7103E2333322904C694ED8661BF6106002D8C3AB60EDC4C28218FCFA519F644102CC2BB80236600B0126802DB80A538ECFCDC1DC8D1148C462C250637D0350A008A5515E7C7E9EA21C4A840013A04440C76767617E64';
wwv_flow_imp.g_varchar2_table(8) := '14209E1CFC611CFC2F0C0D010592851B98473A441411E74DD111A82002141DABBC2BA0B9FEFCC80840222E6CD051FF4B38F81B6A6A8002C99426322509903022CE9BA222C004282ABC38E6E982F7D66D554B53380C5FDEB2450C7C994824A034450224CA';
wwv_flow_imp.g_varchar2_table(9) := 'FCCD5BC017C612A1E2ED9900C5C3160FF8F1B4694F435D1DBCF0D410D485428B6AA5349A0ED5D7D625F3E84C70F3A6B0914CE06D31106002140355B29948C0C22D3C8A47231483EAEA103C3FB425EBE0170AB8A133C16F3FF92484AAAA3186670F5C1522';
wwv_flow_imp.g_varchar2_table(10) := '1B22C29BA220C004280AAC000B6363628D9FCC078341A081BDACB696A24B86968606F82DBC3EA032A448D70F91BBE324722802024C8022801A7DF408621313CAF2CECD9BA16DD932153713DA1B1B61E7A6CD4A2DFAE821441F3F56F1450227E48D001320';
wwv_flow_imp.g_varchar2_table(11) := '6FE8B217A475FCC8DDBB2A73EBC020742D6F5571AB42576B2B0CF50F2875B249B655020B8E20C0047004C6941131EF37567C3ADBDA60F3EAD590EFDF939D9DB0066D88F264FB36DAC6BD88F3C6110498008EC098341219BF874B970B22D280F3FD1DEBD6';
wwv_flow_imp.g_varchar2_table(12) := '0BB990CDB36883568FC8063D4611B97F9F440E0E21C004700848BA58A5B9BA34B70BE7F0355555329AF7BE166DECDCB051958F3E78007CA758C151B0C0042818425CAE8CC761E1CE1D65E9C9BE7E5B17BDAA600EA1BDA9093677F7A8DC85DB58174F8504';
wwv_flow_imp.g_varchar2_table(13) := '1E856E9800852288E5E902959EE844119AC261A0B93BC94E86A1AE2EE3C1B9C80244C67969D4097C990005A2482B33FA92E7B3EB3740301028D0EAE2E264F3D90D1B54062DB552DD2A8185BC106002E4059B51888EFE32D6872B3E6DB8862FE34EEF3B96';
wwv_flow_imp.g_varchar2_table(14) := '2D83DE55C6AA52F4DE3DA7ABF09D3D2640015D1E9B9A027ACC994CD0A30EDB7A7A492C6AD8D6DB2B1EABA04A62D3D3AA7E8A73B08F0013C03E66C91278111AD18EC0DBFAFBA1AE3AF90C4F52A138DB7AAC630BD625AD47F8310909455E7B0F1320AFF63A';
wwv_flow_imp.g_varchar2_table(15) := '5628FA7802685D5E1AFCF0C279D873E86049C231AC4BD61B9F9F83D8E4A48CF2DE26024C009B8009753CFA47EFBB67FE4D37E0845FBCB18D0013C0366400E2E89F7AAF378FE28E174944237C16C8135526401EC0451F3E54A5BEF5E517E1E4D7FEAA2CE1';
wwv_flow_imp.g_varchar2_table(16) := '1FBFF43BCA0F5A165511162C23C004B00C55523136330309BC1145B1E68606781E973E492E4778A1B313E8FD01AA9B56A3E2FC450982C2566002D8820B20A61DFD770F6D81AA4019204CF94C75BFF4D4502A06A09F9954220B4B2250BEDE5BD22D776626';
wwv_flow_imp.g_varchar2_table(17) := '2238D7C6B577F22E88777B770F0C9258D6F052FFA0BAF34CAB41F47DA1B23AE4B1CA9900363A4C9F677F71C34668AD317FC5D186F9BC543BEAEAE03707D725CBE2EA548CDF1C4B626171CB04B00814A9D11196F61476230168EF86B07BE326E5466C724A';
wwv_flow_imp.g_varchar2_table(18) := 'C92C9823C00430C74868D005A67CE2B3AD71196C6B7D42A4DBDDDC9D9B83D73E3A097FFDB3FDF0851FBD2102C9FFF6F147407976ED91FEF6156DB0BC214C22C4F1C6184F83041496364C004B3001C4A6A695E6E7B4777555A205E1E09DDBF087FFFB3FB0';
wwv_flow_imp.g_varchar2_table(19) := 'E7F830FCF2EAA7F070665A04927F78EC4391473A164C2D52D9A53D1E119BAADCB3C0A2861798C004B008603C75F14BEA3BD6ACA19DADF0C6E54BF0F23B6FC3D4FC6CCE7294473A3FBA7239A74EAE8C1D6BD6AA2CDD5795C842560498005961494FA42945';
wwv_flow_imp.g_varchar2_table(20) := '7C2E3970AB824178AEAD3D5DC12476797202BE7DE490D25ABF72157C6DE74EF887175F1481644A930ADF3E7C10AE4DDB3B8AEF68EF8040CA406C7A06002F885351DE2D81001360097064967E447DBABB1BE83D5D9967B68F25E2F0B71FFC0C62A94727B6';
wwv_flow_imp.g_varchar2_table(21) := 'F7F5C19F6DDB06BD4DCD5894866C40C894F6D9DE3E4C0388A0EE370E7C0054562458D884ABAB616B57575213EB8CF1C7759358986C9900260051B63E987675F55092E5F031DE38BB3A7E57E837D6D6C357B4B7BA44A2B6F903CC231D4A3A8FD70B676D2E';
wwv_flow_imp.g_varchar2_table(22) := '69EEEA367CA33BC36487C3D208300196C647E426E6939F3AA1C8D08A15B4B31C6E69D70E1B57AFC47274D4C75DB67FBCB9B6715587CAB9A99555894B08432B8CA959821F8B58022923CB4304309C2EB514C7A5455967FFB226295ADA3FD0A6224DF50DA6';
wwv_flow_imp.g_varchar2_table(23) := '659A1B0C9D7BB33897372D6128F42F333EBF18D7486B68B0948900132013918C383DFE202F283B9A9AA0BECADEB77E7A9A69AE9F343A6161403F9E31067D8FB84E4896B5B26D0A85E08970F27E40821ED8E30B6153D898002610C5B5A944DF136D26DA8B';
wwv_flow_imp.g_varchar2_table(24) := 'B3D737B7A8C4F3F43D1F48A8F8220107EC59A193CC59AF91279962BEEDD756A874DFCD4BFA53830960D2EFFA5462E009FB777FE9599D5D0303A296495C4A7DEBDC792167DBBC75FE1C4CA7A65B3BF0665B9BFCB18C6CCA39D2FA5B5B558EFECAA64A6421';
wwv_flow_imp.g_varchar2_table(25) := '0D0126401A1C8B23FA20EA6B6959AC6021E59BCF3C0775A11AA1398C77807F78E2045C9DA0CF9DE3D9008FFAD7262680D286AF5E153AA4FBF7BFF19C90ED6EFA5A96AB227C065050E414980039A14966D04DB0A404D0A15DA0CA342B7B3A0B7C7DE72EA5';
wwv_flow_imp.g_varchar2_table(26) := '7A019738BF7FE408BCFAEEBBF0EADE77E17B470E03A5498557767D0EDAEBEA6414C086D4AEF9A8FB6EC384AF54990066DD1D4FFEB223A9D1CD26DAE713FEA4AF1F5EFFDDDF07B9CE9FCD06E5BDFE7B5F813F4EDD10CBA66396D68817C24A47F35DA5B190';
wwv_flow_imp.g_varchar2_table(27) := '860013200D8EC59104DE5595A9E1EA9014F3DA7F7EE52AF8BF97FE08FEFCE9EDF04C6F2F34E3B2E88AC64621FFC5679F11799FEFA07B0579991785C278475808B8E133008260F2CF0430010862DA192054F887AF686AF3CAD016F8EE179E87035FFD53D8';
wwv_flow_imp.g_varchar2_table(28) := 'B7FBAB427EF9A9A1BCA73D7A13C21A49137C06D0A1C92A3301B2C26224EA83289CFAF54623D77D52583B03402CE63E075DE61113C0AC43E2C6206AD4079759B932E587AB8D1B7509EDEC5526770AAEB6D8069800660807024A238A4B962AE25221A01E8A';
wwv_flow_imp.g_varchar2_table(29) := '2607719995761C7222C004C8098DCC08480166625125BB55988E6A3E96F1932D6EC527D32F2640262219F140502340D4980E65A8B9263AAD9154F7DD350EBACC1126805987048D39F5543462A65DF6FCA98876060872F79A75082364825040BBA89CD1A7';
wwv_flow_imp.g_varchar2_table(30) := '1726E5CA953DAD9134E0818BF672E124EB753101A48BE5DD07B4C79FEFCFCD95D7190BB5DFD37CD47DB750D4972A4C00936E4FC48D9594510FFC10459A8F7C23CCA4770198004B40B4303606F119E37B402393134B68BB236B543C659AF4857E438CDA90';
wwv_flow_imp.g_varchar2_table(31) := '8CF1361B024C806CA860DAC29D3B90F99DCD91C78F30C7DDFF3A01C8536A03938090C81E98005970A101A3FFF6AF54197960FC30864CCB773F3E3F077FF9DE5E1148CED74E66B91B597C241244EE26BF4C91A9EFF7381320630488C1AF7D8EA467A5F174';
wwv_flow_imp.g_varchar2_table(32) := 'E62D07CF00EF8F8CC0C7A3C940729A1B0544C6B42950B7E67BF4D12360122C069609A0619239EDE95DB51A760CAE83B6E5C66B8617B401A615B52DCE448C7B0ABA6CDB9056E08C46D0F6D656D889BE531BA40A9180DA28E3BCE78B6035066860E8D39EBE';
wwv_flow_imp.g_varchar2_table(33) := 'D59D38F807211008407B4BB3D23B9EFAC8954A709170E2EE98F2A6BDB945F8BE637010A82D3283DA486D9571BFEFF90C80238006040D0C14C5FFE0DAB5F05CEA4576C0BF76ED5B40C76EDDC21477FEEBBED1275CA497D416268144237DEF7B028839FF84';
wwv_flow_imp.g_varchar2_table(34) := 'B1BCB9A1AB1B9EC97825B15DFBE0D4AFAE5F4F47D025B1442201C3376E086F02B86DD37CC6A820F4BAB55D248A4084E76B02F0F77D00FA51395A21112302379BBB7BE0E99E1E94D2FF437837B8A529F945B8195CBDB9E4C2FB0117F126DDECC2BC70BCB5';
wwv_flow_imp.g_varchar2_table(35) := 'A905AAB33C07B4BDB71788E0420937744D4018A0E89AFF523BE2DB3300DD248A8C8F2BBC37F5F4C0D6EE6E15CF143AB56F021DB9EDBE69D0A15B3795CB9D2B727FBF8808BEB1BB47E9120631ED6B742AC327823F0980D38508DEE8927D4C2B25DB70EA23';
wwv_flow_imp.g_varchar2_table(36) := 'E3D9F63D2B8CAFC2EDBD78219B4A59D37E72F68CAABFAFBD5DC9D984CF20D1A9CD322F72FBB66F7F4FC0970488E0CD22F9C58466BCC0A59512391872ED97D7D74353382CB22F8D8DC1A88B8E9A34251B7DF840F84653B5C69A1A212FB5A1363735360A15';
wwv_flow_imp.g_varchar2_table(37) := 'C2C2AF53215F1220A6AD976FEDED1583C0CAA677E52AA5F6F6B54F955C6EE1FD1BC685796F7B876577B6686DA7EB01CB052B48D17704A01F8E90BFF6D8505B0B6B5A5A2C77678FF6DB003F3E750A68E5C572E12229D2AFC8BC79FAB4B2DEABF9A8127308';
wwv_flow_imp.g_varchar2_table(38) := '5D7883AF21F5053AC2C48F9F5274110172F492C3C9B129E3B7B7BA3B8C23BA956A9621615A539F2CBF373509FB5D7031BC1FEF4B902FE4FF0ABCF9D56061FA43BA32ACD5CE18315C4992E97ED9FB8E0071ED8591EE25564B720D8041BC432CF3DE38F589';
wwv_flow_imp.g_varchar2_table(39) := '14CBB6FFC1472755DDEB3A3B956C55E8D256B7746CAC96F7BA9EEF0890D05E6C6FD13E246BB523FB718A515F532BD4E961B60BDA4D349158C2CDA9470FE1DC1D5CC1C13A692AD3D39A7BF91355B2FEB7E0C5BDCC4878E0954FE9AB537B1F12C078082DDB';
wwv_flow_imp.g_varchar2_table(40) := 'CD22336083C100DE4C32EEA8FEE71963FE6D56D6E9FC37B4A5CF4D5D5D40BED9AD43C720A11D1CECDAF1AABEEF088057AE05F7D56047075457550B3BEF9D3B0323DA5B6322B1049BAB782DF3FEB9B3A2A69A500D0C6873799168715315D48680F6153C8B';
wwv_flow_imp.g_varchar2_table(41) := 'C53DAFA6B5DEF36D2959036AAAAA60FDDAE42FB3C7F0A6DABF0E7F5858DD7994FED6AF7EAE7E6C897CD18FE47998F36D1126409E5DBF092F38E9C84BC50F5DBE04C7EFDF23B124E197E3E3307CED9AA82B541D824DABECAD668982BC11083001040CF637';
wwv_flow_imp.g_varchar2_table(42) := 'B57816D8D2D7A70AFED32F8EE2ECCAF88284CA705AA0330ED625CD7E666000E8613D19E7BDCC6DCBFB0000069E494441543D049800F6F04AD35E87D702F2BE003D1EF1F648F271E434258723FF8F777DAFA45ECAA1C71E06DA977EEEC7E1EA2BCE1C13A0';
wwv_flow_imp.g_varchar2_table(43) := 'C02EDD3E38A82CBC76F8103C5A585071A785FBF3F3F0FA91C3CAECB383EB94CC427E083001F2C34D955A110E837CB272626E165E3D7A44E5392D7CE3C841A03AC82EBDE1257F149BE25E0DE5F69B09E0400FE88F1F1CFDF432FCF8DA5507ACA69BF8EF4F';
wwv_flow_imp.g_varchar2_table(44) := 'AFA80B5FCAA90F15F67B65648383CFDF082B7400C4E309387AE9129CB99E5C9191F6FEF9E001B8393B23A305EF6F4C4FC36B870EA4D9A13AA96EF2212D8323B610E033802DB80CE5F9580CF69F3D0D57F507E2529F529F8F46E0959FEE03D2314AE427CD';
wwv_flow_imp.g_varchar2_table(45) := '623D5FDFFF1E44702F2CA4EA2099EA261F9CA887ECF9313001F2E8F529BCD0DD7BE204DC7D907C09854C543537435D6F0F04529F24A755A16F6ACB95A4633BE092E7DFE1BCFFDABDE43D06B24D75505DD216F940BE904F328DF7D611600258C74A688E4F';
wwv_flow_imp.g_varchar2_table(46) := '4EC2BBC78FC39436C509E152640D2E89D2E7C86B56AF06080480FE7E7AE13C7CEFFC3912F30ADF3D77160E5FBEACCA926D5107D64575CA0CF2857CBA87532599C67B6B08949100D61C7493D6753C12EFFBE8242C44524B9D8120D4E01DE1EA9616E566B0';
wwv_flow_imp.g_varchar2_table(47) := 'AE0E426D6D2AFE9DA387E117A9757B9568413878E736FCBB7606219B645B16A53AA96E401F288D7C7AFFC471B87EFF3E4539584480096011A88F4747E1F0D93310C7690915A1E9486DD75AA80A87299A16687056C9F76D31E76F7EF226FCD7954B40EBF8';
wwv_flow_imp.g_varchar2_table(48) := '185DF29F74F65CBE082FBFF3B6D2235BD5CB97ABB814A86EF2817CA134F2EDF099D3F0C9CD518A72B0800013C004245A653984539953B80C295503B5B5504B8F1FE35EA665EE432B57E2F580B154F92F073E802FEEF9016CFDFE7F88F09D9F1F51454896';
wwv_flow_imp.g_varchar2_table(49) := 'E9A4F31AAE22C9CC4075086A9678D627883E902FE4932CF3C9952B62758A7C9769BCCF8E0013203B2E22752E1A857DA74FC18D31E39B9B74D4ADC3C11F485DEC0AC52C9B40308824590BC1BAFA2CB9D69282F5F5C286BCA6C8558A7C219F820DC6D98856';
wwv_flow_imp.g_varchar2_table(50) := '88C8775E21CA855A329D0990C461D176726E0EF69E3C09E38F8CDF04A069480DCEF9CD06A434460393A628347F27E2505CE6E5DA930EE95299DAB56BF12C529D4B353D3D1080DA359D50DD624C95C8775A21A2B6A42B734C22109402EF0D04C668A50797';
wwv_flow_imp.g_varchar2_table(51) := '39A7E54A0F0EAE10ADBC6817B786B6B9248953D7D707F5EBD6413D866AED5D5C92653AE910C9A88CB9E5C51AA1F636205F658E5821C2B6D0EA954CE3BD810013C0C04248F48EEDBE9327208237B34402AEB2880189EBFC22EE814D35FA5AB3660D00FA0E';
wwv_flow_imp.g_varchar2_table(52) := 'F8476D790FDB745EFB1A1E26F33F22C00440101ECECEC2051C1C6F0E0FC3F18B173125F91FC00BD0BAEE2EA8CAE3E5F9A485F26DC9679A7E511BA417C72E5E80B78E1D83F3784D436D96E97EDEFB9A007B0E1D040AEF0C7F08C3383868BA200783B800C5';
wwv_flow_imp.g_varchar2_table(53) := 'C11FB0F99D1D59DE0D7BB142846DD02FC42767A6E118AE6A519BA9ED14DCE06BB97CF01F0152D3825C80D31193961DC5056855552EB582D3038180B2110818B24A7448A03BC77426A08B6A3069BB69BE433EB9C98CEF0850DDDCB408FF606D9D583DA147';
wwv_flow_imp.g_varchar2_table(54) := '0DEAFA7AA12AE3C7251615702021180E8B159E002EA792EC80C9254DD045755D4F37D09E964B0338BDCB2C900D9B4C9D42E36E2BEF3B02D0333472C545EE6B719A40AB2774C7B5541D44D3135AF1A1407229EA0D8442E2310D5A2E25A2CBF6CB3D61530A';
wwv_flow_imp.g_varchar2_table(55) := '3FDC5487EF08E026F0D997F223C004287F1FB007654480095046F0B9EAF223C004287F1FB0076544A0840428632BB96A462007024C801CC070B23F106002F8A39FB99539106002E4008693FD810013C01FFDCCADCC8100132007308E26B331D722C00470';
wwv_flow_imp.g_varchar2_table(56) := '6DD7B063A5408009500A94B90ED722C004706DD7B063A5408009500A94B90ED722C004706DD75486636E6F0513C0ED3DC4FE151501264051E165E36E478009E0F61E62FF8A8A0013A0A8F0B271B723C004707B0FB17F4545A0880428AADF6C9C11700401';
wwv_flow_imp.g_varchar2_table(57) := '26802330B211AF22C004F06ACFB1DF8E20C00470044636E2550498005EED39F6DB110498008EC0986184A39E418009E099AE62478B810013A018A8B24DCF20C004F04C57B1A3C5408009500C54D9A66710600278A6ABBCE1A8D7BC640278ADC7D85F4711';
wwv_flow_imp.g_varchar2_table(58) := '6002380A271BF31A024C00AFF518FBEB28024C0047E164635E438009E0B51E637F1D45C0410238EA171B63044A820013A0243073256E458009E0D69E61BF4A820013A0243073256E458009E0D69E61BF4A820013C00998D9866711600278B6EBD8712710';
wwv_flow_imp.g_varchar2_table(59) := '6002388122DBF02C024C00CF761D3BEE04024C002750641B9E458009E0D9AE7387E35EF7E2D7000000FFFF0D448AAB00000006494441540300F9C752F99500C7E80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1273930304323904811)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D09741CC775EDEB99C16025082E0048425C01EEC442D31B4959E08000E3E8FF48B2E39FE49FAFEF25273FFF24F93FC9499CA3C48E1CC572';
wwv_flow_imp.g_varchar2_table(2) := '6245D93727CE62C576727CBC4896EC5822091020259192139100012E92B88AFB4E80C43A4B77DE6B4C2F331800B356D74CBF395DDD55D5D5AFDEBBAFEB7675554FB707F8C7083002AE458009C0B5AE67C319010026003E0B18011723C004E062E7B3E9EE';
wwv_flow_imp.g_varchar2_table(3) := '4680AC670220143830022E458009C0A58E67B319014280098050E0C008B814012600973A9ECD76370286F54C000612BC65045C880013800B9DCE26330206024C000612BC65045C880013800B9DCE26BB1B01BBF54C00763438CE08B80C01260097399CCD';
wwv_flow_imp.g_varchar2_table(4) := '6504EC083001D8D1E03823E0320498005CE67036D7DD08C45BCF04108F08A719011721C004E02267B3A98C403C024C00F188709A117011024C002E72369BEA6E041259CF04900815CE63045C820013804B1CCD6632028910600248840AE731022E418009';
wwv_flow_imp.g_varchar2_table(5) := 'C0258E6633DD8DC074D633014C870CE733022E40800920CEC90D2FBF5CDCD2D353B5A1A767D1A6030796361D38B0B2E5C081D59BBBBA366CEAEA6A6ADAB7EF7D8DDDDD5B38C88701F9867C44BE229F91EFC887E44BF229F936CEDDAE4FBA920036EDDB57';
wwv_flow_imp.g_varchar2_table(6) := 'DFDCDDF9F1C6FD5DBFDFD4D3F52286DEA6FD5D9771AB9595FAC75588DCF541E4AA470D5D003574565543EF46BC70DCE385A3E0D10E2B8AFA1607F93020DF908FC857E433F21DF9907C493E25DF928FA3BEEEC5F88B740EE8E74257D72A37B2812B08A0A5';
wwv_flow_imp.g_varchar2_table(7) := '676F4BF3FEAE27D1F107D0E9C31E8F765A5394E7150DBE804E7F14430B68B004B7BCB80181495FB7A0A98FD239A09F0B5E3843E74653CFBEFD8D3D9DBFBBB1BBBB19F717C43293110549001BBEF31D7F6377F7C34DDDFBBED2D4D37541054FAFA6C117B1';
wwv_flow_imp.g_varchar2_table(8) := '913F84609463E085114884009E1B5AAB02CAD35E45EDC373E72C86BF68EADEBB93CEA94407E47B5E4111C0C69E9E86A6EEAE3FF455CF3F8B5DF41F81A2FD123A6829065E18817410588907FD1A289E2E3AA7B007F907748E615EC12C794F0038C053D1DC';
wwv_flow_imp.g_varchar2_table(9) := 'DDF9F3C8D4AF7921720A14F81DF44E1D065E18816C2250873DC8CFD13986E7DAAB8D3DFB3E4DE75E362B7042565E1340F3FE7D1FC3019E37F11EEE9F11BC0731F0C2088840E0230A68CFE1B9B71F2F3E3F21A2C274EB98EDB8BC2480969ECE1DC8C26F68';
wwv_flow_imp.g_varchar2_table(10) := '9AF6021AB811032F8C8013086CC18BCF6E3A17E99C7442814CEBCC2B02A02E1782FD2D15941E34FCC3187861046440E0C3744E36F6747D93CE5119144A5687BC21009CBBDFE6532247D1B09FC3C00B23201D020AC0E3785BD0D7D8DDBD453AE5A651282F';
wwv_flow_imp.g_varchar2_table(11) := '08A0A9BBF3931EAFD6838330AE7C58631ADF71B69C08D42B1EF5109DB34EAB974CFD721380A62934F5028AF2756CFCFE640CE2328C80E30868E0A773B6B967DFD38EEB328B02D212003D78D174A0FB7BD8F03F378B0DBC9B119012010DB4DFC50BD8D7E9';
wwv_flow_imp.g_varchar2_table(12) := '5C965241544A4A02D8D1D3E3F355CF7F1E34EDE3A8232F8C40FE22A0C1277D35F3BE4BE7B48C4648490077B4F03710ACFF8E81174620FF11D094476E43E4399186245B977404D0DCD3F50CDE3FFDCF640DE0728C403E20403304FAB92D99B252114053CF';
wwv_flow_imp.g_varchar2_table(13) := 'BE5FD7009E900C23568711C80A02746E37E1399E15615912220D01B474EFDD8EF7FC7F9A25BB580C23202902DA9F34F7744AF3D8BA140440A3A4AAE2F93A2820853EC03F462077087851F47374CEE336274B2A42A5687045D5F3BF884AD763E085112878';
wwv_flow_imp.g_varchar2_table(14) := '0434501AA2E7BCE3B63A4E004D3D7B3669009F751C095680111088009DF38D073A1B055699B02AC70900C0FB25D48CBA45B8E18511700D025E45551C7F52D05102A03FF8A0BB1FC5C00B23E046041E6DCEF28060AA203A4A005EAFF6C7A92ACCE5198142';
wwv_flow_imp.g_varchar2_table(15) := '4240030FF5801D33C9310268ECE97A4CD3609B639673C58C80140868AD4D3D5D1F754A15C7084001E5D79D329AEB6504E44240F96DA7F471840036EFDBB71C40A357743B6537D7CB08488480F650D3813DF406E28C744AE760470820E2513F83CA2A1878';
wwv_flow_imp.g_varchar2_table(16) := '61041801000554CFA7C0819F7802D0346CF8CAA71DB095AB6404244640F924E86D43AC8AC209A0697FD787D044BC05C0352F8C00236020B032DA368CB490AD70025040794C88655C0923907F08A43D1B90AEA9C2090015156E24D6C90B23900F08086F1B';
wwv_flow_imp.g_varchar2_table(17) := '420960F3DEBD4B3480A67CF004EBC808884740F9E096CECEB922EB154A00E122EF2E344EC1C00B23C0084C454009F9949F9C9A9DBB1CA1048073FFFC359FDCF99225170002D843DE91AA199994174A000A682D9928CBC73202858E80E836228E009E7A0A';
wwv_flow_imp.g_varchar2_table(18) := 'EB52F8FEBFD0CF60B62F330414A511F4B6929998648FC646996CD1CCCAB5B46EA3C65F9A99143E9A1128700434286B6CDDBA469495C20840032FDFFF8BF22AD793D70828E04DFA561932FC09230095EFFF3374151FEE1604709AACF008008D5AE11607B2';
wwv_flow_imp.g_varchar2_table(19) := '9D8C4026086800EB32393E956385F500900016A5A218976504DC8A00B61561174B610480ACC604E0D6339AED4E098164DB4A4A42A7292C86009EA2294058308D0E9CCD083002B108CC173515288400D6B66F2E47FB7C187861041881D91128DAB2654BC9';
wwv_flow_imp.g_varchar2_table(20) := 'ECC5322F2184004A4395DECC5565098C807B10885454F845582B8400547F5088312200E33A18011108CCD666B2A5831002288A94720F205B1E6339AE4040549B1142001363637CFFEF8AD3968DCC1602A2DA8C1002F0F955EE0164EBCC6039AE4040549B';
wwv_flow_imp.g_varchar2_table(21) := '11420061D5CF04E08AD3968DCC160233B5996CD54172841000F87C3C0848684B163455050A92A9C5EA20025EBF26E4A2298600208826F122130291FBF761FCCC593D505C26DD581780C878411100BB542604A8C107AF5D03BCFCEB81E291E1619954645D';
wwv_flow_imp.g_varchar2_table(22) := '042120A80720C81AAE665604F4C67FF52A367CCD2AAB6910C43CDA6765724C4604B2AD131340B61195585EE4DE3DBDA11B2A56949601053D6D900096D1D3BC7205024C00AE703340786808A8AB6F985B8E8D7F57733350304900775219220A8CF2E20204';
wwv_flow_imp.g_varchar2_table(23) := '98005CE0E4F0E01084AE5F372DA506FF13D8F8CBFC7EA0402430A78CFEAF3559844880086332C5EB42468009A090BD8BB64546462074C36AFC95E5E5F0D19616BDE1E36E7DD14900F3EC24408441C7EA0578250502B95082092017A84A22539D9880E015';
wwv_flow_imp.g_varchar2_table(24) := '1CF08BEA53595E8E5DFE1628292A8AE6589B529F0F762109CCADA83033E95892616670A4E01060022838974E1AA485C310BC740947FB553DA3ACA4143A9AB1F16343D73312AC8804DA9B9AA1ACB87872AFA642F0F26520599319BC2E340498000ACDA364';
wwv_flow_imp.g_varchar2_table(25) := '0F8EE84F60E3D722114A81D7EB83F6A626A006AE67CCB0A2326D8D4DE0C563A81835FE092401409994E6505808300114963FF18AAFC1C4E52BA005279FBE54D0BE406323549624FF8299AAB2327868E346A063F170D0F45B892B14E5E01002B9AA960920';
wwv_flow_imp.g_varchar2_table(26) := '57C83A243774F316A8A32366ED1F58B71E1655569AE96423755555F0FEB5EBCCE2342018BA75CB4C73A430106002280C3FEA56444647213C78578FD3AA7E491DACA9A9A1685A616D6D2DAC5CBCC43C367CE70E92CBA899E648FE23C00490FF3ED42DA0FB';
wwv_flow_imp.g_varchar2_table(27) := 'FDD0556BC49FA6F43EB06A95BE2F93D587EAEBADA70551103D23C0FF2044200A64610228104706AF5E03220132C7E3F1C08E4D9BC0875B4A671248462B8E07904C92438382F48C00C53988412097B53001E4125D41B2C38343D835B7EEFBB7AC59037353';
wwv_flow_imp.g_varchar2_table(28) := '18F49B4DCD793828B865F51AB318FD69888299C191BC458009206F5D37A9B8160A41E8E6CDC904AEEB1654C3DA9A5A8C6577A1F180BAEA6A5368F0FA0DA0DE8099C191BC448009202FDD66294D5D7FD0261FF6F1E1DCFDD6B5D695DA2A959DD8D686D540';
wwv_flow_imp.g_varchar2_table(29) := '75E8D2D448CC9F8BF43C5EE51D024C0079E7324B61EA86ABE36366C6E6D50D5032C3937E66C13423F408F1E68606F36815671D687AD0CCE048D611C8B54026805C239C2BF99A865D7F6B5EBE0AE7FA73D1F58F579FA615EDFF17B0DF7EC497E5B4FC0830';
wwv_flow_imp.g_varchar2_table(30) := '01C8EFA3841AD2DF75B570C8DCB7D5F6D08E99998388A228B075CD5A53323D71C8EF0F30E1C8BB081340DEB90C15C6AB7FF8F66D8C4C2EF4C0CF82D2D2C98480F5C28A8A98078442B75017D44940D55C4596116002C832A022C485EEDC0563CE9FEABB73';
wwv_flow_imp.g_varchar2_table(31) := 'FF1E741E3B2634DC1DB15E224A3D11EA91902E1CB2878008494C002250CE621DD4F0E9915CBBC8BBF7EFC3F53BB78586C1B87707EA3D12EE05D8DD9217712680BC7093A564F8EE5D30A6FDAC5CE7633A310D0E3AAF086B9012024C0029C1E57CE1C8D090';
wwv_flow_imp.g_varchar2_table(32) := 'A9C483F50DF0CBDB1E74346C5F654D0B86EF320198CEC9930813409E388AD4A4D176BAD2529CFEABFFE487B7C1FF59BFC1D1F0E4D66DD67B037056829F0B20EF641E4449600210857416EAB15F6177AC5E0335597CDE3F5DF56A51878F34AC360FB7EB68';
wwv_flow_imp.g_varchar2_table(33) := '6672445A049800A4754DAC62EAF838A813E366E6CF6ED868C69D8EFC9C4D177A1909FD3FC1699DB8FEE4106002480E27C74BD9AFAC0FCC9B0F1F5AB0D0719D0C05B62EAC86C573AB8C24D8753533392225024C0052BA2556297A014704E7FA8DDCC75B36';
wwv_flow_imp.g_varchar2_table(34) := '0328340A0072FC5097C737A34E516DC2715384D16CDE248980C8624C0022D14EB32E75C4FAAF7F69911F1E59BE224D49B1879D1DBE0F146273D34B3DBA7C259418DF1B502340AF274B4F121F25120126009168A7595764D822001AFC2BF57AD39404F0ED';
wwv_flow_imp.g_varchar2_table(35) := 'B367E0E32F7D1F367FED1FE1A7BFFD2D3DE8F11F7C1FBE73EE4CDA72CB7D3EA0694943806AD3D9C8E3AD7C083001C8E793291AD9A7D61E5CBA74CAFE6432C6231178E2D0EBF04CCF3E3877EB2680FDA93D8C9FBD7913BEDCBD0FCB1C84092C9B8CCCF832';
wwv_flow_imp.g_varchar2_table(36) := '1F59BACCCCB2EB6C6672443A049800A47349AC42EAD8180076A98DDC6D69BEEDE717F6BC027B4F9E30C44CBBDD7BF238FCC2DEDDD3EE9F69C7F6DA45E66E2D14042D64FD5BD1DCC191191110BD93094034E229D667BF926E5A5C07557E7F8A1200FEEEC4';
wwv_flow_imp.g_varchar2_table(37) := '31387ED5FAB04763DD03F08B0F3D045F7AF8613D509CF20CC1C7AE5C867F48822C8CF2C676417131ACB191805D77A30C6FE5428009402E7F4CD1C6DE881E5C99FAE0DF3BF786E09FDE7CC3941B58B3167EB6B9199655CCC13C9A4950F438E505D658AF13';
wwv_flow_imp.g_varchar2_table(38) := 'FBEA9B87E0946DE6010B27B53CB472A559CE3E76616672442A049800A47247AC32F4D82F7D96CBC8DD6EFB48879137DBF65B6F9F0415EFF1A9DCAA05D5B0D3F64A2FCAB3879D0DAB61D5FC857A96AAAAF0ED77DED1E3A9ACB6612FC5284F0F051971DECA';
wwv_flow_imp.g_varchar2_table(39) := '890013809C7ED1B5522726F42DAD3C38D7BED1F6B00DE525134EDB3EE7F5BEE5D620DD74C7BE6FC57273D7E9DBD62BC7CCCC59229BAAAA8074358AD96D30F2789B1801277299009C403DC93AED57FFFA9A1A5014EAB2277970B4D819DB9B836A2BCAA3B9';
wwv_flow_imp.g_varchar2_table(40) := 'D36FEC654EE3CCC0F42513EF29F27860D98205E64E7A659899E0887408300148E7124B21FBD5B321CD477F6B2A2A4C819AAA99F1E9225AF47681F62F2CB78EA574B2614D758D59D46E8399C9116910600290C6155315B1379EFA79F3A7164822675DADF5';
wwv_flow_imp.g_varchar2_table(41) := '9190776DBD81E90E7DC776D55FBFC83A76BAF289F21B6CBADA7B3189CA729EB3083001388BFF8CB5DBBBCFF5786F3D63E16976AEB5F51C0E9E3E0523C1E9E7E64782413878C67A1A70BDEDD869C427CC6EB0E9AA4E041396E1CC58049C4A31013885FC2C';
wwv_flow_imp.g_varchar2_table(42) := 'F5EA577F5B77BCBEB272962312EF7E64C50A282F2ED1778E8542F0CDDEB712920035FE6F1CDB2034420000100049444154390CE358860A579694C2232BAC293DCA4B36D457CE358BD20B43639E3A34F770440604980064F042021DE2BFBBB7B4B42C41A9';
wwv_flow_imp.g_varchar2_table(43) := 'D9B31662E3FF42A0CD2C78E9F61DF872D75E78F1C431F8F1C58B7A78E1D831CCEB84CB77EE98E59E6EEF48EBA12312402F09A1AD1154EC591871DECA850013805CFEB0B4C17978235152E4079C0280747FBBEA1E80FFB5E5033187BF75FE3DF8E140BF1E';
wwv_flow_imp.g_varchar2_table(44) := '8E5C782F66DFCF7FF0C3F090ED89BE989D49248AE3FFAC64B32589C3B9884004980004829D4A559AADD1CC2D9DECC2A7727C7CD9CFB66C86AF3EFA3158A83F0118BF77325D83B71954E6FF37364D6664B0AE9E33C73C9A1E6832131C99828093194C004E';
wwv_flow_imp.g_varchar2_table(45) := 'A23F53DDB6FBFF8A92CC0980AAFAE0C26A78E1E39F80677FF2BFC12F6DDB0E1DEBD6C147376CD4DF2AFCC798F7C2C73E015486CA661ACA8B8B2D113632B332392603024C00327821810E5A443573AB7040CE4C6418995354041D4BEAE017D76F8467B73F';
wwv_flow_imp.g_varchar2_table(46) := '045FDEBA1DE8CDC2ED9847FFE9CF50BC79B85D677B6FC62CC0112910600290C20D0994D02C02A8CC520F20412D39CB9A5362F500EC6496B30A59705A083001A4059B80836CDDE64A7B775A40D5D9A8A212671F4C39B6F71998791CD111707AC504E0B407';
wwv_flow_imp.g_varchar2_table(47) := '92A83FF57F00242134C745BC1EDBA9651BCFC871B52C3E45046C5E4AF1482E9E5B046C7FFC190D87735B570EA4D38345A6589B2D661E47A4408009400A372450C2D668EE8F5B7F0B4E5052CAACE1A04D677B6F404A6DDDAB141380A4BE576C8D6634947F';
wwv_flow_imp.g_varchar2_table(48) := 'CFD38F8C5B3ADB6D91146E47D492A152260019BC904807DBD3742379F828ED70C8EA01283E5F220B394F020498002470422215EC8D66C4F666A0446565CC8BD1D9466632EAEA669D980024F5BE626B3437D27839A79366D13B08EFD8BE6664B7C549BDB8';
wwv_flow_imp.g_varchar2_table(49) := 'EEA90830014CC5448A9CF0DDBBA61E115585ABF47D003347EEC8E5B151209D0D2DC3B67F191A796EDFCA623F13802C9E30F4C039F3E0952B10B97FDFC8D1B7174686F56D3EACDE1B8ED5956C219BF8BD00F2798F0940329F04AF5D83485C032215DF8B23';
wwv_flow_imp.g_varchar2_table(50) := '04CACB341CBC711D28642A27FEF80B096E59C826B22DBE2CA79D458009C059FC636A0F5EBD1A73E5F77AADD1F30B43433165334DBC72F922FCBF1FBEA487BD572E672A2EE6F80B43F7CCB4DD06BD2780369A3B39E238024C008EBB605201EA225303994C';
wwv_flow_imp.g_varchar2_table(51) := '012C5FB41836DB3EE271F2E675635756B67DD72D7947B0D79115A1512127B067118DC2FB5637E8B61869B29188CE48BB712B93CD4C004E7B83EEF92F5F8EE9F62FADAD850757AF865ADB4B35FAB14C180703B3A5AEFDF5DFF678A6F2836A044ED8BE4358';
wwv_flow_imp.g_varchar2_table(52) := '5B3147B7856C3264EB2480F6F098808188735B2600E7B0076A00FA95DF3665460DE523ABD782A22850555A063E5F91AE6138128193F7B27B1BA00BCEF2EAF8E0A03903E0C35B98AAB232DD16B2A96E41B5591B7DF3906C270CCC4C8E084780094038E4D1';
wwv_flow_imp.g_varchar2_table(53) := '0AE9CA4FA3FDB6C64F0D841A8AC7A3E8859003A076DE3C3D4EABBE9B37682375E8B57D5760D102EB5B066453EBFAF550C7242095FF98001C7207DD07D355D0A87EF1C26A68DDB01EA8A11879B4AD993B97367AE8CDF2BDBA2E9456937C43B18C43AFBDFB';
wwv_flow_imp.g_varchar2_table(54) := '3FB72A461ED946362E8A2701170D0CC60022418209C00127846EDC8CB9E75FB46021EC58B70E3C74C98FD3A7C6360ED077E952DCDE2C2567FF62585215D158C2119B8ED59553BF65403606D6AF839AF956EF80A60843B69E43529571A1AC20C004901518';
wwv_flow_imp.g_varchar2_table(55) := '931712C6E9BCF0A0F5945F3576F17760D7D8EB49EC0A7ABB6E51741CE0EEE8081C1F1A4CBEB2644B66A907D08F768D4E8CEBB596F8FDB0B03CF1C748BD1E0FB46DD80864BB5E1857F4E463E49E357D8859BC084020F15927A0623756411FFB08DDB0EEE3';
wwv_flow_imp.g_varchar2_table(56) := '2BCACA21B07113F8B041CC84C70ADB37FA769F3B3753D1F4F665A907B0F7FC79B3FEE58B1699F14411B279C7FA0D50515A66EE0E5EBF01849199C1919C23C004907388AD0A42B76EE923FF944323E43B376D02FF2C8D9FCAAEC0F101DA52D8FDCEDBA60C';
wwv_flow_imp.g_varchar2_table(57) := '4A672564A30780839A3F3A79DC546705DED698896922C53E1F041A1BC18BB3057A114D8550121F30D5CBE6E14A469599000479450B06C1DEC56D5CB912E624F9B6DF5ABC972E8DBE64F3D6F07D387CE77676B5CE420FE03F51A7A1E81F964AFDC540B72E';
wwv_flow_imp.g_varchar2_table(58) := 'C928391731D8B4628559943022ACCC0C8EE4140126809CC26B090F0F0E9989323CE9D7CDD245360B47232B6A6BA331803DE773701B604A4F2FB2C7766BB26AF1E29484ACC7F2441AFA41D893A071123DCEAB9C23C004907388272B888C8D4E4670DDB0A4';
wwv_flow_imp.g_varchar2_table(59) := '0EBC9ED4A05F5E6D3D44F3A39327613422CF8B42499757DE3E89964D2ECBAB2D5D2773665ED378407DDD12B3903A3A66C639925B04523B0B73AB4BC14AA76FE369B6B7FA2CAEAA4AD9561A51AFC25B013A9046DA5F94A817F0C2B9B3403A916E7371DA72';
wwv_flow_imp.g_varchar2_table(60) := '7E9935B04779C98425B66706549C4928B4AF092583811365980004A0AEDA1A3F55B70047FF699B6AD8B4749979C8378FF402CDBB9B190E45223870F7AFBD47CCDA9B972F37E3A944AA2A2A628A6BE393D38931999CC83A024C0059873481C048C4CC2CC6';
wwv_flow_imp.g_varchar2_table(61) := 'F9718F27BD61F765F3E6038D1F90B06BF706A1CBF6D41DE53911BAAE5C81EBD1F97B9AD25B3A6F415A6AD06C88D7980D4009DC034010042C4C000240B69FCC25D1D1FC74AA25E2D8B0CCBAC23ED7D79B8E98A9C7A4C747BA9CE77A2D1D362C5B06091E66';
wwv_flow_imp.g_varchar2_table(62) := 'D4CB25B32A2FB1BE270859FCE7633275BBB50C138008CFDBA6D98A326921A86B434D0DF88BFC180338893D80ACBCD1C7A69F2E38C9D5FE6B57E19DEB57F5D2A45343758D1E4F7755E49DFCE7231D2FC3ED0DE9918D20B30C260099BD9340371A315FB774';
wwv_flow_imp.g_varchar2_table(63) := 'A9B9E7D983AF03BD85D7CC1014A177133CFBFA6B666DEBF1EA4F3D1433832379810013405EB82956C9754B9698BD800B776EC3F30ECC087CF7DC19B83A34F9BF047AEE3FD5E71A622DE2945308300138857C06F5D280594B7DBD29E16F0E1D04911F10BD';
wwv_flow_imp.g_varchar2_table(64) := '1F0AC1DFBCF186597F4B7D0314D9BE6360EEE088F408300148EFA2C40AAEAEAE8639D1E9C47BE363F0E747ADC1B8C447642FF7CF7A0F5BF3FEE515D080BA644F7A614992DD1A2600D93D348D7E8AA2C007D7AC31F77E0F6704DEBA7DCB4CE72AF2E6AD9B';
wwv_flow_imp.g_varchar2_table(65) := 'F0E240BF29FE436BD79A718EE41F024C00F9E73353E3C595955067BBFA7EBEBB2BA7B702D4F5FF7CD75EB3FEA535B55013F7008FB99323798100138008376530CF3E9B7A2B6BADFFDDDFB8770FFEE8C85BB31D32757F92FA3DF3D67F82FD9B7F2B6CE433';
wwv_flow_imp.g_varchar2_table(66) := '5528E7E403024C0022BC94E63CFB6CAA5D1CBC0B874E58FFC1A7F23FC0EEF91BA9BE3C3409FD5EBD7E0D5E3E718CAA30C3A1932781743033381283403E249800F2C14B09741CB87C050EF4F7839AE089B9DFC16EFAF52C3E4B7F656C143EDFD939458B88';
wwv_flow_imp.g_varchar2_table(67) := '1AD175387EE5CA947D9C911F083001E4879F4C2DE9A19F83A74EC1D133A7CC3CC5E783E2A54B81B69439343A0ABF8A243061FB0F02E5A713C650C6AFECDD0DC313937FD1A53AEC7591CCDED3A7E0D0E9D340BA519A43FE20C004903FBE026AD05DC78FC1';
wwv_flow_imp.g_varchar2_table(68) := 'B9ABD61557F1FBA178D932F09496827FF162D39A77B1CBFEE49B07CD745A114D83275E3F00E7E9556651015407D5457552DDD16C387BE532906E41240C238FB7F223C00420C247490EB2CDA4CA703008AF1C390237EEDC318B79CACAF5C64F5765CAA486';
wwv_flow_imp.g_varchar2_table(69) := 'E95BB080A27AE87CFB6DF827DB8B3AF4CC44AB69F4FBEADB27E035BCB21B87F8162CD48986D254279100E940690AA4DBEEBE3E205D29EDE6902FB63301E481A76EDEBF0F2F1F3E0CC3782F6EA8EBC529C0E207EA40F1C4BAB00809C0DE28FFF6E06BF083';
wwv_flow_imp.g_varchar2_table(70) := '0BEF198725DC261A037CE1FC39F8FB43560F826416D9BEF44382A86ED28174A134857B23C3BAAEB7868729C941720462CF1EC99575A37AEFDDBE0D9D7DBD100C054DF38B162E04FF0CEF14F42F590C4AF41F8374D0EF75EE81CFEC7905FE1A6708FEF1E4';
wwv_flow_imp.g_varchar2_table(71) := '09A070FCFA75DAA587E3D7AEE97994FF570347E153BB5F81A7F775EAFB6845B24826C51305D2857432F691AE7B7B8F00E96EE4F1564E049800E4F48BAE55FFA54BF01ADEF3DB07D7E81EDC67FBAA8E5E306E4557666AB08AEDF9FCBE4B17E16BFFF1267C';
wwv_flow_imp.g_varchar2_table(72) := 'E5D0EB7AB07FC197E246FE73FFF163E8BF7CD19448328AEB964CE9699805A211D289748B26F50141D27D80BE026C64F2563A04980044B824511F7B867A55558357DF791BFACF9EB14A79BCFA48BF77CE1C48E6E7292E86E2E5CBC153529A4CF184653CC5';
wwv_flow_imp.g_varchar2_table(73) := '25BA0CFB605FC282D14CD28D660800758D66E16CC569A0590BB2C9C82BF46D3ED9C70420C25BD30CB225AA7A3C1C86CE630370C1D645577C4550B26C29D0205FA263A6CB53687A108FF32F59027485F6969783A7AC4C0FB4CF388EE2463E95A1B2744CF1';
wwv_flow_imp.g_varchar2_table(74) := 'F26540FB8C72C96C4947D255419D8DF2346BD1797C0026D036238FB77220C00420C20F49F600EE8F8FC32BBDBD7073D0FA76A0A25FC9B121E2745FBAAA7A2B2A80EED1FD757550FCC0037AF094979BE2286EE4FBB10C95A563CC022946A8C7508CC443BA';
wwv_flow_imp.g_varchar2_table(75) := '1B87DEBC7B57B78D67080C44E4D8320188F083327B2597B081BC8CD37C23F691FEF272BCF263E3B7DDCBCF2E29F5128A928482298A55B0F75142CF2794594443B318349B7179703045695C3C57083001E40AD924E48E6197F8D6C808BC7EEA5DD88F23F4';
wwv_flow_imp.g_varchar2_table(76) := 'A170C83CCA5755057EBC1A67F4964D539A431124167D9A70EE5C53019A21E8E93FAADB4CB68F872C9B0BE13D80A6A17912610210E128DB2DC0AD7B43F0AFAF1ED0C3F338CFBEFBF05B70FEEAE48B350D558AAAABA1A826B3176C1AB292D9E6BAE1F96B6B';
wwv_flow_imp.g_varchar2_table(77) := 'F55B10BB2E6433D9FEBD370EE958102677EE0FD98B705C00024C00024056BCC9C14CF7CC348AEE9B372FE75A298AA5134D1BE6BA421A5824DB687C2099BA44E8948C1E855EC63A0B0ADD5207EDA39171B04D8DC5AB42D36D74C52FA169BBD2F4A7EDE2E5';
wwv_flow_imp.g_varchar2_table(78) := 'CE94F65658F7E6990CF8CD5447FC3EC2A164C50AA01E0ED91CBFDF482B38E641B312469AB7B94380092077D89A926940ACB47E953EFA6E8CB6D3D5B064D52A285DB306E7DA9701DDF39B07088850032BA9AF8792868694A71733558F7A3834C548B61306';
wwv_flow_imp.g_varchar2_table(79) := '8485890BCE52905E440299D623FAF87CAC4F0801783D8AF56DAC7C44291B3AE38018353A33E0959E88211BA2D395418DCCE9AE3661403D031397B2B274CD29ACE33C1EEBD9EF1C5A268400224126801CFA90451720023E4F50C8455308018832A600CF03';
wwv_flow_imp.g_varchar2_table(80) := '36C9A50884839EC2210051C6B8F45C61B3254020DB2A14979686B32D33913C213D0051C6243290F318817C4420E41D2B9C1E402412997CA15C3E7A827566041C40C013F417CE2060B0A666D4010CB94A46206F1110D56684DC029CD8B891D86C226FBDC1';
wwv_flow_imp.g_varchar2_table(81) := '8A3302332090835D13D1369303D1B122851040B4CA6BD12D6F18014660660484B5158104A009336A666C792F23203B02CA79511A0A24008509409457B99E3C4740DCC552180128006FE7B957587D46600A02B9C8C0B652783D000DA00FF8C7083002B322';
wwv_flow_imp.g_varchar2_table(82) := '20B2AD08EB016810610298D5F55C80110010D9568411C0C08137DE45CB54763023C008CC808002A37A5B99A148367709230078EA291514B03E699B4D2B581623E0000239A952D306F4B69213E153858A2380C9BAF9366012075E33020911D04011DA4684';
wwv_flow_imp.g_varchar2_table(83) := '128002CAFE8456732623C008E808780A990034F0FC3B5AA961E085116004A622A07942911F4CCDCE5D8E2777A24C658902000005F049444154A74AEE0F042E2900FD53F7700E23905F08E4425B6A1BBDBB765DC985ECE9640A2580A812BBA35BDE30028C';
wwv_flow_imp.g_varchar2_table(84) := '402C02C2DB8670025040136E642CC69C6204E4444003ED45D19A092700EF9C7907D1C8F730F0C208300206020A5C980FBEB78CA4A8AD700238FCFEF78700B47F116520D7C308641B819CC8D3B4E7F6070242DE0368D75F380150E55ED5F31C6E350CBC30';
wwv_flow_imp.g_varchar2_table(85) := '028C0040381C86AF3901842304D0BB7327DD02EC75C260AE93119010811F9DE8E8B8E0845E8E100019EA01ED19DA726004DC8E00B685BF700A03C708A02FD0414F05EE71CA70AE97114807811C1CB327DA1672207A76918E1100A916D13C4FD0960323E0';
wwv_flow_imp.g_varchar2_table(86) := '5604348FF65B4EDAEE28011C6F6B3B8AC6BF84811746C08D08BC34D0DA31E0A4E18E1200191E01EF67713B8C811746C04D088CA8AAF29B4E1BEC38011C0F044E03284F02FF1801C911C8A67A0A289F3DB673E7996CCA4C4796E304404AAFBD79FBAF71FB';
wwv_flow_imp.g_varchar2_table(87) := '3A065E18011720A01D3C1AD8F9F732182A05017CF7677E2682B7029F4140F8560041E0A5A011C0AEBFE753B2582805011018FAAD80A67D9ADF1B48687028480434501545F9DF3274FD0D7CA5210052A8BFADE37945D13E4F710E8C804C0864451745F9CD';
wwv_flow_imp.g_varchar2_table(88) := 'A33B767E3F2BB2B224442A02209B8E063A9E51348DFE2B40490E8C40A120F097FD819D8E3DF1371D88D2110029EAAB9CF77F15804E8A736004F21D010DE0FBFD075EFF0D19ED909200E82FC3BEE1B1C740515E901134D6891148018197FCC3638F8B7CD5';
wwv_flow_imp.g_varchar2_table(89) := '770ABA81940440061CFEA99F1AED6F6DFB8402CA9728CD8111700A81B4EBD5E0CBFD3B767E8CCEE5B465E4F840690940B71B470471BEF449D0349A3689E879BC6204644740812076FB1FEF6F6BFF1CF662312AAFC21E7955B334EB6FEBF806689EED98F3';
wwv_flow_imp.g_varchar2_table(90) := '0E065E1801991118503575FB40A0FDDF6456D2D02D2F088094ED6F6BFBF13DF0B60068BF8FE910065E1801991008691A3C5D34A76ACBB1C02EE1EFF64B1788BC210032F07C2030DE1FE8784A89C0264CFF10032F8C404E1148423875F1BF1701EF8681B6';
wwv_flow_imp.g_varchar2_table(91) := 'F62FD0007612C7485324AF08C040ED687BFBBBFD81F6473C9AFA20F608E82DC3C62EDE3202C210C096BF5FF1685BF05CFC1FFA93ACC26ACE5E4579490086F97D6DBB0EF6073A8804B6E240E137317F02032F8C402E11985000FE8D2E3E789F1F38DADAD1';
wwv_flow_imp.g_varchar2_table(92) := '9BCBCA722D3BAF09C0000749E04D1C28FC6411781F0050E80D2B67807F8C40361150E02CDEE33F41E7D8D140FBE374F1C9A678A76415040118E01D0E046EF50776FE497FA0BD41D1B48F82025FC17D1731F0C208A48C001E701134E5EF540576F5EF68AF';
wwv_flow_imp.g_varchar2_table(93) := 'C77BFC67E91CC3FC82590A8A00EC5E39DAD6B1079DF62B4806CB229AA74503ED49248457B1CC08065E188144088CD039A228F0050FA89BE9DCE96FDBF9CBC776B417EC63E9054B0076EFD2BB0707021D5F42426845A7566811A8C71EC24F6B0A7C11CBD1';
wwv_flow_imp.g_varchar2_table(94) := '3B09FBD0F142BFCA8AF5F2E214020A90AFFBB0FA97E81CA073415595063A37E81C39BAA3FDE9BEC02EDA8F450A7B710501C4BB70A0BDFDECD1B68E170676B4FF1E3AFD310C9BD1F175B85546C782251EF0CE0B8377B1EA295A069EA2551E4FD11A6F0436';
wwv_flow_imp.g_varchar2_table(95) := 'AA11680655D9A2699EF773900F03F20DF9887C453E23DF910FC997E453F22DF938EAEBCD187F8CCE013A1764FA8F7EFCF99ACBB42B096026404F3FFCF0445F2030782210B876ACB5F5627F6BEBB9BED6D653BDEDED278EB5B7F7F7EFDC7964A0ADED3007';
wwv_flow_imp.g_varchar2_table(96) := 'F93020DF908FC857E433F21DF9907C493E25DFCEE47BFB3EB7C49900DCE269B6931148800013400250388B11700B024C006EF134DBC908244080092001289CE56E04DC643D13809BBCCDB6320271083001C401C24946C04D083001B8C9DB6C2B23108700';
wwv_flow_imp.g_varchar2_table(97) := '13401C209C7437026EB39E09C06D1E677B19011B024C00363038CA08B80D012600B7799CED65046C083001D8C0E0A8BB1170A3F54C006EF43ADBCC08441160028802C11B46C08D083001B8D1EB6C332310458009200A046FDC8D805BAD670270ABE7D96E';
wwv_flow_imp.g_varchar2_table(98) := '46001160024010786104DC8A0013805B3DCF7633028800130082C08BBB1170B3F54C006EF63EDBEE7A0498005C7F0A30006E468009C0CDDE67DB5D8F001380EB4F017703E076EBFF0B0000FFFF8E54976C00000006494441540300D71CECC4761F0A1300';
wwv_flow_imp.g_varchar2_table(99) := '00000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1273930682130904811)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000222494441547801EC95CB4B1B5114C6BF99928999D4C6CCA49294066BDAAD8516EABA10A4A5FF52FF8C96D24D4BA1745FBA6A8BD055C1F7C68526BA30BE50E323';
wwv_flow_imp.g_varchar2_table(2) := '0F3513CDCC78CE25238A48EE1D17824CC8771FE77E9CF971B867467FFE6FDCBF4DE9B8E55F04105520AAC08D2A60D4EB60DDA493430318CD268AC305140B4F116B3442338402F08E8F319ACDC1340C98B11846738FE0B55AA120D4017C1FF76A35EC34EA';
wwv_flow_imp.g_varchar2_table(3) := '98DF5817AAD25AA75818026500F7E8081FC7DEE0DBEBE2257D288EC1A5CAA8422803647CE08565C3715DBC9FF82FC4EB97144B7B9EEAF3A10C3062DBE221DB4E0BB9FE7EA16ADB81A66918210871A8302803644D53A41F4ADE472195C63352DE4C8AD860';
wwv_flow_imp.g_varchar2_table(4) := '222166954119C039ED9CE77FF7388FB7A420D0E9B8C1527A560270A9DF4B7BD5F3E4FB276DB0824079B70AF6047B99591A40F4BE9D8143973048BC7278880A89F73EB5678BCE5E9187BD1C93913440962ED913BA8076EA01FE6E6E5CC9CDB1413A1B26CF';
wwv_flow_imp.g_varchar2_table(5) := '4382B962B826200D90A2B71EE7181AB0F0697A06A7175AAE4D2DF9796E16F9B4C51658F13E31CB0CD2005A379BAE6B30927DF85A5AE846802F8B0B889B09F01907A9583C49499772754D9EE763B252C12AEDBF974BF8B5BC849FA41FCB65AC50D9A7562B';
wwv_flow_imp.g_varchar2_table(6) := '600F1D4BFFA501B60E6A182F2D628D2AA0C7E3F02C0BBF6B07F843F269CD3106630F7B6509A4011A191BCDF40034FAFA05C9757AF1B082BD46F7843DEC0D62BD6669805E89C29E47005105EE7E057A75C719000000FFFFD6B5C756000000064944415403';
wwv_flow_imp.g_varchar2_table(7) := '00C0AC0B5098D2A9530000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1273929745781904810)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD779425D97DDFF77BB17398CED33D3DD393D3EE601176B100B18B05088BA6780881A028269FE3734CD1B62C503ED2B12CD1A62DFF611FC9';
wwv_flow_imp.g_varchar2_table(2) := '36834C511445801203601A0C0240126181C562B1BBB38B4DB393C34E8E3DDDD33977BFE47BDF4C377AA65FDDAA7EB1AAEEE7EDBC7EF56EFCFD3EB7F6D5B76EAAE891EFBD90E30D03CE01CE01CE01CE01CE01BBCE81A8F08200042000010840C032022208';
wwv_flow_imp.g_varchar2_table(3) := '00EB9A1C87210001084000020800CE01084000021080807504B4C3F400680ABC210001084000029611400058D6E0B80B0108400002B613B8EF3F02E03E07FE42000210800004AC228000B0AAB9711602108000046C27B0EA3F026095049F108000042000';
wwv_flow_imp.g_varchar2_table(4) := '018B0820002C6A6C5C850004200001DB09FCD07F04C00F597004010840000210B0860002C09AA6C6510840000210B09DC07AFF1100EB69700C010840000210B0840002C09286C64D0840000210B09DC0C3FE23001EE6C137084000021080801504100056';
wwv_flow_imp.g_varchar2_table(5) := '34334E420002108080ED041EF51F01F02811BE430002108000042C208000B0A091711102108000046C27B0D17F04C046268440000210800004424F000110FA26C6410840000210B09D4021FF110085A810060108400002100839010440C81B18F7200001';
wwv_flow_imp.g_varchar2_table(6) := '0840C0760285FD470014E6422804200001084020D4041000A16E5E9C830004200001DB0938F98F007022433804200001084020C4041000216E5C5C830004200001DB0938FB8F007066430C04200001084020B4041000A16D5A1C830004200001DB0998FC';
wwv_flow_imp.g_varchar2_table(7) := '470098E810070108400002100829010440481B16B72000010840C0760266FF1100663EC4420002108000044249000110CA66C5290840000210B09D809BFF08003742C4430002108000044248000110C246C5250840000210B09D80BBFF08007746A48000';
wwv_flow_imp.g_varchar2_table(8) := '0420000108848E000220744D8A431080000420603B012FFE2300BC50220D0420000108402064041000216B50DC810004200001DB0978F31F01E08D13A920000108400002A1228000085573E20C0420000108D84EC0ABFF0800AFA4480701084000021008';
wwv_flow_imp.g_varchar2_table(9) := '11010440881A13572000010840C07602DEFD47007867454A084000021080406808200042D39438020108400002B613D88CFF0880CDD0222D0420000108402024041000216948DC800004200001DB096CCE7F04C0E678911A021080000420100A02088050';
wwv_flow_imp.g_varchar2_table(10) := '34234E400002108080ED0436EB3F0260B3C4480F0108400002100801010440081A11172000010840C076029BF71F01B07966E480000420000108049E000220F04D88031080000420603B8162FC470014438D3C108000042000818013400004BC01311F02';
wwv_flow_imp.g_varchar2_table(11) := '108000046C27509CFF0880E2B8910B021080000420106802088040371FC6430002108080ED048AF51F01502C39F241000210800004024C000110E0C6C3740840000210B09D40F1FE23008A67474E084000021080406009200002DB74180E0108400002B6';
wwv_flow_imp.g_varchar2_table(12) := '1328C57F044029F4C80B0108400002100828010440401B0EB32100010840C07602A5F98F00288D1FB921000108400002812480000864B361340420000108D84EA054FF1100A512243F0420000108402080041000016C344C860004200001DB0994EE3F02';
wwv_flow_imp.g_varchar2_table(13) := 'A074869400010840000210081C010440E09A0C832100010840C07602E5F01F01500E8A94010108400002100818010440C01A0C732100010840C07602E5F11F01501E8E94020108400002100814010440A09A0B632100010840C07602E5F21F01502E9294';
wwv_flow_imp.g_varchar2_table(14) := '030108400002100810010440801A0B532100010840C07602E5F31F01503E969404010840000210080C010440609A0A432100010840C07602E5F41F01504E9A94050108400002100808010440401A0A332100010840C07602E5F51F01505E9E9406010840';
wwv_flow_imp.g_varchar2_table(15) := '0002100804010440209A09232100010840C07602E5F61F01506EA294070108400002100800010440001A09132100010840C07602E5F71F01507EA69408010840000210F03D010480EF9B08032100010840C0760295F01F015009AA9409010840000210F0';
wwv_flow_imp.g_varchar2_table(16) := '39010480CF1B08F32000010840C0760295F11F015019AE940A010840000210F035010480AF9B07E32000010840C0760295F21F015029B2940B010840000210F0310104808F1B07D32000010840C0760295F31F015039B6940C010840000210F02D010480';
wwv_flow_imp.g_varchar2_table(17) := '6F9B06C32000010840C0760295F41F015049BA940D010840000210F0290104804F1B06B32000010840C0760295F51F015059BE940E010840000210F0250104802F9B05A32000010840C0760295F61F015069C2940F010840000210F0210104800F1B0593';
wwv_flow_imp.g_varchar2_table(18) := '2000010840C0760295F71F015079C6D400010840000210F01D010480EF9A04832000010840C07602D5F01F01500DCAD401010840000210F019010480CF1A04732000010840C07602D5F11F01501DCED402010840000210F015010480AF9A036320000108';
wwv_flow_imp.g_varchar2_table(19) := '40C07602D5F21F01502DD2D403010840000210F0110104808F1A03532000010840C07602D5F31F01503DD6D404010840000210F00D0104806F9A02432000010840C07602D5F41F01504DDAD405010840000210F0090104804F1A02332000010840C07602';
wwv_flow_imp.g_varchar2_table(20) := 'D5F51F01505DDED406010840000210F0050104802F9A01232000010840C07602D5F61F01506DE2D407010840000210F0010104800F1A01132000010840C07602D5F71F01507DE6D408010840000210A839010440CD9B00032000010840C07602B5F01F01';
wwv_flow_imp.g_varchar2_table(21) := '500BEAD409010840000210A8310104408D1B80EA2100010840C07602B5F11F01501BEED40A010840000210A8290104404DF153390420000108D84EA056FE23006A459E7A2100010840000235248000A8217CAA860004200001DB09D4CE7F0440EDD85333';
wwv_flow_imp.g_varchar2_table(22) := '042000010840A06604100035434FC51080000420603B815AFA8F00A8257DEA86000420000108D4880002A046E0A91602108000046C27505BFF1100B5E54FED108000042000819A104000D4043B9542C0270472399F18821910B08F40AD3D4600D4BA05A8';
wwv_flow_imp.g_varchar2_table(23) := '1F02D526A02EFAA9F10959BE754B966FDE92F4E4A4E4D2E96A5B417D1080408D0920006ADC00540F816A12C82E2FCBD2D56B921E1F93ECC2826497162575EF9E2CDFB8293AAE9AB6501704EC26507BEF1100B56F032C8040550864666765E5F61D75B79F';
wwv_flow_imp.g_varchar2_table(24) := 'DA505F2E9D9215D523A0D36C88240002100825010440289B15A720F030818CBADB5F19192D78F15F4D99CB64F2BD0199B9B9D5203E2100810A11F043B108003FB4023640A08204D2D3D3A2EFFC259B71AD45CF0558191E96CCCC8C6B5A12400002C12680';
wwv_flow_imp.g_varchar2_table(25) := '000876FB613D048C04D25353EAAE7E4C249735A67B28329713DD5B909E987828982F108040B908F8A31C04803FDA012B205076027A767F6A7454BCDCF96FA85C0986D4D898E8D5021BE20880000442410001108A66C409083C4C20357A4FDDF9DF7B38B0';
wwv_flow_imp.g_varchar2_table(26) := '886F7AB5404A8B8822F292050210284CC02FA10800BFB4047640A01C0454F7BD5ED6979E9A2C4769F932F430C2CAC848FE983F10804078082000C2D396780201D1DDF6BAEBDF0B8AA6444262EAED256D667ABA2C3D0A5EEA220D04C24DC03FDE2100FCD3';
wwv_flow_imp.g_varchar2_table(27) := '16580281E209A83B7F7D97EEF5E2DFDDD1297FEBC813F2A34F3C2183DDDD9EEAD565EBDE054F8949040108F89E0002C0F74D8481107021A02EFEA9F171D177E92E29F3D1BDED5BE499FDFBA5A9A9517A1A1AE5A95DBBA5B7B3331FE7F6272F02C6C6DC92';
wwv_flow_imp.g_varchar2_table(28) := '110F01083810F0533002C04FAD812D10D82C0175F15F191D15AF4BF6FA3BBBE4938F3D268DEBBAFE1BEAEAE493070F497F5797A7DA755D5A70784A4C220840C0B7041000BE6D1A0C83800B017DF11F19F17CE73FA0BAFA3FAEEEFC63D18DFFDBC7A251F9';
wwv_flow_imp.g_varchar2_table(29) := 'C8DE7D32D4DBE752E9FDE8B4EA7158B97BF7FE17FE4200021E09F82BD9C65F027FD987351080402102EAE2AF27FC79DDB14F5FFC9FDDB75F62F178A1D2F2610DAA57E043BB76C940774FFEBBDB1F5D377302DC28110F01FF124000F8B76DB00C028E04F4';
wwv_flow_imp.g_varchar2_table(30) := 'C55F8FC73B265817B1BDB757F217FF586C5D68E1C37A25023EBEFF806CF72802B40D6C16549825A110789480DFBE2300FCD622D8030117027A6F7FBD36DF25593E7AB0A7577E64CF5E8979B8F8E733A83FD168443EBC678FECEEDBAABEB9FFD37302BCDA';
wwv_flow_imp.g_varchar2_table(31) := 'E35E1A292000816A114000548B34F540A00C04F453FDF23BF3A92100B7E206D55DFCB37ACC7F1317FFD532EB1209F9C0EEDD32E86562A0DE36F8DE3DC92E2CAC66E7130210D840C07F010800FFB5091641A02081CCFCBCA4F4C43B0F17FF9DFD03F2B17D';
wwv_flow_imp.g_varchar2_table(32) := 'FB241289142CCB4B609D120ECF1E3C243BB7F6BB275736E9A7082202DC519102027E218000F04B4B6007040C04722B2B921A1915FDB85E43B27CD4B69E1E797AE7CE4D75FBE73316F8138944E44955D62E0F222097C948EADE98685B0B14451004AC26E0';
wwv_flow_imp.g_varchar2_table(33) := '47E711007E6C156C82C03A02FAA2BF7CEBB6BAF8A7D685163EECEBEC9467F71D28CBC57FB586643C2E1FD8B55BFAB674AC06397E6697976479785872D9AC631A222000017F104000F8A31DB002020509E80BA95E6F9F4BBB5FFCDB5A5AE499BDFB444FE2';
wwv_flow_imp.g_varchar2_table(34) := '2B58580981F5B1A87C6CFF01696A6A762D25B7BCAC7A2B4644D4B0806B621240C00A02FE741201E0CF76C12A08E409E86E7F2FE3EA0DEA2E5D2FDFAB4B26F3F92AF1A73E99901FD9B74F1AEBEB5D8BCFCCCE8A5E22E89A9004108040CD0820006A869E8A';
wwv_flow_imp.g_varchar2_table(35) := '216026909E9A92CCEC8C39918AAD5317FF8F1C3A2CAD8D8DEA5B65FFF5A85E860FEA0D85A2EE7B0AE4F72A989EAEAC41940E810010F0AB890800BFB60C76594D20333727A9B1715706D148443EA42EC8FDEDEDAE69CB9560477BBB3CB96F9F48C4FDE743';
wwv_flow_imp.g_varchar2_table(36) := '2F59CCAA2101E1050108F88E80FBFFC1BE33198320106E027AD29F9E4D2FD98CABA34FAA31FF9D5ED6EABB96B4B9047B7A7AE4B19D3BC5F595CB49EAEE88689F5CD3920002A124E05FA71000FE6D1B2CB390407ED2DF9D61C9A5565CBDDF37B85DF6787C';
wwv_flow_imp.g_varchar2_table(37) := '788F6B61452478626040F66CDBE69A33BBBC24A9112605BA82220104AA4C00015065E05407014702EA6E593F652FBBB4E898643542AFF5FFD08E1D12297E9F9FD5A28AFF54953F35B44B06BBBB5DCBC86F623431E99A8E0410081B013FFB8300F073EB60';
wwv_flow_imp.g_varchar2_table(38) := '9B5504F27BFC4FBA5F247B5ADBE4A93D7B251AADFDFFBED168443EB66FBF74B7B5BBB6557A7C4CB410704D48020840A02A046AFF0B521537A90402FE26905D5EF634E9AFB1B1513E72F0A034C69D1FEB5B6D4F63B198FC88B2A9BDA9C9B5EAD4E83DD1BE';
wwv_flow_imp.g_varchar2_table(39) := 'BA262401044241C0DF4E2000FCDD3E586701013D414E4F94739BF4175717FDE70E1C9496BA3ADF51694E26E529D513509730EF43A0E736A4EEDDF39DFD1804011B0920006C6C757CF61501FD38DDECF292D1263DD4FFF48103D2D1DC6C4C57CB48BD47C0';
wwv_flow_imp.g_varchar2_table(40) := 'D37A79A08B117A63A3D4F8844B2AA221107C027EF70001E0F716C2BE5013C88FFB4FBB6FF673787087ECF0B0177FAD616DEBE890DDFD03AE66A427C625333BEB9A8E04108040E50820002AC79692216024904BA5243D362692333F38A7ADA5550E6F1F94';
wwv_flow_imp.g_varchar2_table(41) := '4844F703188BAC79642412910F0DED9456B76706E472F9390F7AF8A3E6466300042A42C0FF852200FCDF4658184202F9F5FE232392CB9837FB49C4E2F2CCFEFD9288C5024321118FC94794CDF178C268732EB522A9D151631A22210081CA114000548E2D';
wwv_flow_imp.g_varchar2_table(42) := '2543C091407EDC7F61C1315E47E8FBFD237BF6487B63A3FE1AA8777773B33CB567B7ABCD7A887EA3800000100049444154CB6386025C3191208004826032022008AD848DA1229051177E2F4FCADBDDDF2F077B7B03EBFBCEEE1E19ECE971B55FF7026497';
wwv_flow_imp.g_varchar2_table(43) := '975DD391000210282F0104407979521A048C04F49877EAEE5D35EE9F33A66B696E910FAAB17463229F47462211797ACF3E6953BD012653F53048EAEE882909711008188160988B0008463B61654808A42726458B00933B8968543EAABACF1371FF6CF663';
wwv_flow_imp.g_varchar2_table(44) := 'B2D71457178FC90776ED96A4CB7C80ECF292A4A7A64C451107010894990002A0CC40290E024E04F478777ADAFD227760689774B7B6391513B8F081F676797CC70E57BBF506415986025C3991C0FF048262210220282D859DC126A097BDDDD34BFECC5DFF';
wwv_flow_imp.g_varchar2_table(45) := '036ADCFCF0407FB07D2D60FD81AD5B65A0A3B340CCBA20C5482F8BD42B24D6857208010854880002A042602916026B04D4854DDFDDEA656F6B61050EEAEBEAE5FD4343125763E705A2031D1451C31A1FDEB74FDA1A1A8C7EE88705799920692C844808D4';
wwv_flow_imp.g_varchar2_table(46) := '9440702A470004A7ADB034A004F25DFF535346EBF592BFA7F7EF9776970BA4B1109F47362693F2F8EEDD128B9A7F76D21313925B59F1B937980781E01330FF9F187CFFF000023525A027FCA527DC1FF1BBBB7F40B6B58567DCDF09FAF6F60ED9A186039C';
wwv_flow_imp.g_varchar2_table(47) := 'E2F3E1AAC76465F49EEB4A897C5AFE40C0670482640E022048AD85AD8123A02FFED965F3837E5AD55DFF613D492E845DFF8F3658341A91C7B76D97582CFE68D443DFB30BF392595C7C288C2F10804079092000CACB93D220B04620BBBC2CDE66FD0F494B';
wwv_flow_imp.g_varchar2_table(48) := '22B1962FEC072D75497962F72E5737F3F3265CB64A762D840410A82A816055860008567B616D5008A86EECF4F8B86B37764F77B7ECEEEC0A8A5765B3F340EF56E9EEE830969753024A8B00632222210081A20920008A464746083813D013FFF4DB398548';
wwv_flow_imp.g_varchar2_table(49) := '2C1ACD3F392F16B5EF7F433DDAF1F88E21D10F3B3231CACCCC88EE4931A5210E027E2110343BECFBE5095A0B616FF008E8BB7F0F13FF766C1D908E06F3B2B8E039EFDDE2FE9616D9BB7DBB6B063D8F421453D7842480000436450001B0295C2486803B81';
wwv_flow_imp.g_varchar2_table(50) := '94EAFACFBA4CFC6B6E6A91C7B70FBA1716F21487FBFBA5AEAECEE865667646DC7A538C05100981AA10085E250880E0B51916FB98402E9592F4A479CDBF36FFFDBB775935F14FFB5CE85D178BC9FB77ED2E14F55058CAC32E8A0F65E00B0420E04A0001E0';
wwv_flow_imp.g_varchar2_table(51) := '8A880410F048407553E72FFEB9AC31435F778F6C6B6D35A6B12972576797742A26269F73E994A43C0CAB98CA200E02952410C4B21100416C356CF62581ECE2A2A4A7A7CDB64522F2815DBBF21300CD09ED898D461513351CE23621303D31E1BAAAC21E6A';
wwv_flow_imp.g_varchar2_table(52) := '780A81D20920004A67480910C81348E52F50E6BBFFBD83DBA5C365CC3B5F98657F7A1B9B64FFD090D96BD5B392676C4E452C046A40209855220082D96E58ED3302FAEE5FBF4D66B537B7C8E1DE5E5312ABE3F674764A735DBD914146F5B06497978D6988';
wwv_flow_imp.g_varchar2_table(53) := '840004BC11400078E3442A0818097899A436D0DE2E8DF184E43219DE8F32C866A5211697A1AE2E891848EB672B64A6670C29888240F50904B5460440505B0EBB7D4320333B2BD925F77DEBCFDCBA295F7EE307F2D563C7E46BEAAD3F791FCBF3F8EA3B6F';
wwv_flow_imp.g_varchar2_table(54) := 'CB9F2936A76FDF929C4BCBA66766440B019764444300022E0410002E8088868091809EF9AFBAA58D69D64566B219995F5C9039F5D69FBC17F23CE6979644B35987CAF95031D47B2DB03990332262AA4920B875210082DB7658EE0302F9BBFF45F7BB7F1F';
wwv_flow_imp.g_varchar2_table(55) := '981A2A13F25B04AFAC84CA279C8140B5092000AA4D9CFA4245203F2B5DF50284CAA92038A398A7A7A682602936869C4090DD430004B9F5B0BDA604F4F6B439EE426BD60699D939C92E2CD4AC7E2A8640D009200082DE82D85F1302B96C56D2EC4C5713F6';
wwv_flow_imp.g_varchar2_table(56) := '6B956633EE1B2FAD25E60002952010EC321100C16E3FACAF1181EC9CBAFBF430F3BF46E659536D666E9E1501D6B4368E969B0002A0DC44292FFC04F4F8B38707FE343734CAD6F62DBC8B64D0D7DE2EAD0D2E8F4BCEA99E18F60508FFFF733EF530E86621';
wwv_flow_imp.g_varchar2_table(57) := '0082DE82D85F750299C545C9BA8CFD7FF6C813F2F2CFFFA27CE3A7FF2EEF22197CF3A7FF9E7CE7E77E413E7BF83131BDF4EE80FA298CA634C44100021B0920003632210402460299C9491175E7E994A82599941FDFBD5B2211BDA71D6F9162198824A331';
wwv_flow_imp.g_varchar2_table(58) := 'F97B870E4B93618B60FDA4C0F4CCACF08240750904BF360440F0DB100FAA4840CFFACFCCCF1B6B3CD03F204754F7B53111919E090C3535CB9383DB8DE9752F80A8A119632222210081870820001EC2C117089809A467CCFBD0276331F9CC8183F93B5773';
wwv_flow_imp.g_varchar2_table(59) := '49C47A2550A7987E7AFF3E63F27C2F0073018C8C882C2F813094860008432BE2435508E8A7D0E5EF340DB5F5B7B6CA535DDD8614441543E0FD9D5DB2A7BBC798353DA58766DC9E24602C82480858450001605573E36C2904F4A633FA497E4E65E891EE1F';
wwv_flow_imp.g_varchar2_table(60) := '3F7848BAEAEA9C92105E2481D678427E6CFF7E636E3D3CA3459A31119110280B817014820008473BE245150864E6E68CB5F4B4B6C973DB068D69882C8E403412914FEFD8295B1A9B8C05B8B59131339110B08C0002C0B206C7DDE208E83BCBECD2B231F3';
wwv_flow_imp.g_varchar2_table(61) := '933B76C8BE9656631A228B27D0914CCAC777EF3616A02768B224D08888C83210084B110880B0B4247E549440FEC13386A57FF168547E6CE7AE8ADA607BE19AF14FEDDD67C4901F0658E4E98C46484442E0010104C003107C40C089402E9D16FDE019A778';
wwv_flow_imp.g_varchar2_table(62) := '1D7E706BBF1C69DFA20F795790C01ED5C3F2F8A061982597536DC59E00156C028A96F020400084A72DF1A44204B2FA8E329B3196FE770E1E92D644C29886C8D20934C662F2F36E3B032E2CF27C80D2515382050410001634322E9646C06D62D95067977C';
wwv_flow_imp.g_varchar2_table(63) := 'B8C7BC44AD340BC8BD462012918F74F74A876932A01AAAC9CCD20BB0C68C83B212085361088030B526BE949D80BEFBD76F53C19FDCBD47B635349A92105746026DAAA7E5D32EBD007AC3A65C365BC65A290A02E1238000085F9BE2511909645CBA93BB9A';
wwv_flow_imp.g_varchar2_table(64) := '9AE513A631E932DA4251F709442211F9EC9E3D925042E07EC8C6BFB9E5656135C0462E84944A205CF91100E16A4FBC293381ACCBDAFFA7760CC9634CFE2B3375F7E2FA558FCB8F0CED3426CCCC999FD960CC4C24042C208000B0A09171B138027AF67F76';
wwv_flow_imp.g_varchar2_table(65) := 'C5BCF6FFE3DBB71757788D7365723959CA6464259B91AC3AAEB1399BAE3EA67A013EE3B22430BB302F0C036C1A2D190C04C2168500085B8BE24FD908E84D65C470711C6A6F97035BFCBFF46F4C7587BF3E3E26BF71E6B4FCA3A32FCB3FF8DE77E597BFFD';
wwv_flow_imp.g_varchar2_table(66) := '2DF9AFBFF975F9A5AF7F5D1D3F2FFFF0A517E51FBFF6AAFCDE85F3F29A4A7B4FE5291BC80A1574A4A3531A1249C7D2732B2B925D5A728C270202B6134000D87E06E07F6102EAC2EF3693FC604F9F6C37CD462F5C72554273CAFEABF373F2BB674EC93F7E';
wwv_flow_imp.g_varchar2_table(67) := 'F105F9A75FFF6BF9E20F5E9357CE9F971F5CB92CEFDEBA29A746EECAE9D1BB72ECD60D79EDF22579E9DC59F9F7AFBE2CBFF2B5AFC83F51793E7FEE8C5C9EF3EF6CFA9644423E32E43C0CA09FDB906518A02AE79B1D9584CF4B0440F8DA148FCA4020DFFD';
wwv_flow_imp.g_varchar2_table(68) := 'BF68BE7B7C62A0BF0C3595BF889B0B0BF27BEA6EFFEF7FEDABF2F91FBC2EA7EFDC96F954CA73457A4840E7F9DDD78ECA3FFAC6D7E5F367CFC8B0DE0BC17309D549188F46E5A32E1330336A18A03AD6500B048247000110BC36C3E22A10C8CC2F88E49C97';
wwv_flow_imp.g_varchar2_table(69) := '91C5E20979ACB3AB0A9678AF425FB88FDE1D5617EDBF96DF7FE3759958543E78CF5E30E59DD919F9DDD78FCA7FF78DBF91AFDFBC5E304D2D039FEAED15FD1446271BF44A00FD768A271C025E0984311D02208CAD8A4F2513C8BA5C3C9F1C1890FE46FFAC';
wwv_flow_imp.g_varchar2_table(70) := 'FD5FCCA4E58FCF9F93FF5E5DA8AF4D4F97ECFFA3055C9B9A94FFE3C5EFCA1FAA6182948FD6D76FAD6F906DEDED8F9AFBC3EF6A28242FE67E18C2110420F0800002E001083E20B04A20DFFDEFF2E4BF0F2901D06E9880B65A56353E6754F7FE6FBFF38EFC';
wwv_flow_imp.g_varchar2_table(71) := '3FAFBD2A7A767FA5EA5C4CA7F375FCC6DB6FC982121C95AA6733E5C62311F9D49EBDC62C7931A7848031119110301208672402209CED8A572510C8AA31742D024C457CA0A7D7145DB5B8C54C467EEFF8BBF2FF9D3A51B53ABFACEAFA9D778F55AD3E6345';
wwv_flow_imp.g_varchar2_table(72) := '4A003CBB6D502211E78100DD03C030809122919612400058DAF0B8ED4CE0FEF2BFAC6382FDDDBDD2EB83EE7F3DD3FF6B972FC99F9E3CEE686BA522BE7CF284FCA11A72A854F99B29775F5BBB349BDA43EF75B0B2B29922490B81870884F50B0220AC2D8B';
wwv_flow_imp.g_varchar2_table(73) := '5F4513C8BACCFE3FBC75ABF4ABB1E7A22B2853C677C6C6E4378EBEE2B9B4BEE656F9D4C143F2CB1FFB98FCEAA7FE33F9DFFFF64FE4DFFA58877DEAC041E96B6A112F2F3DE1504F343C3A72D74BF28AA66988C5E449D50B60AA24BBB0688A260E02561240';
wwv_flow_imp.g_varchar2_table(74) := '0058D9EC38ED444077FDE75CC6B73FA00480EA73762AA22AE1A34B4BF2EBEAE29FF63021AFAFB5557EF1A9A7E473CF3E23CFEDDC293B5ADBA429F9C30D74F4B10E7B6ED72EF9DCC79F955F7CF249E96D6915B7979E13F0DBAFBD267369EF4B0CDDCA2C26';
wwv_flow_imp.g_varchar2_table(75) := '3E1289C827B60F19B36697978CF14442C0994078631000E16D5B3C2B82407EE738C384B1EEA62639E483DDFF5EBC7943DE1B1F73F5F0A9A19DF2B98F3D2307BBBA5DD3AE2638D8DD23BFF2CCC7E4A91D3B57831C3FDF9B1893AF5CBEEC185FAD88A77ABA';
wwv_flow_imp.g_varchar2_table(76) := '251675FE39D37300F4CE80D5B2877A20100402CEFFC704C17A6C844099096417CC6BE70FF6F6895E7A56E66A3755DC9DC505F9F2897725E792EB39D5A5FFE943875C52394547E4D3870F892EC329C56AF89F1C7B5BEED5F80EBBBBAE5E761B444E2E9391';
wwv_flow_imp.g_varchar2_table(77) := '8C0F37335A65C8A77F0984D9320440985B17DF364540DF25BA5D24DEDFDF2FF56ACC7953059739F1AB776E8BDB5AFFA776ED964FA92EFD52ABD665E8B24CE5DC53A2E9AB576ADB0B108944E45993BFAA57C74DDC997C240E02612480000863ABE2535104';
wwv_flow_imp.g_varchar2_table(78) := 'B2A994E4560CE3D9D1987C746B6DB7FF9D56363E7FF192D1BFBE2DEDF2E903078C693613A9CBEA6D6B336679E192D92663E632457E7CDBA07118203FB953098132554731561008B793088070B72FDE6D82404E2F15336CFF7B4875FFB727EB365162F993';
wwv_flow_imp.g_varchar2_table(79) := '5E9F9F931B6ADCDD54F28FEE2FDFC57FB51EBD4260F5B8D0E7ADC909B93A375728AA6A61875ADBA4D5B03A239756024F0D0554CD202A8280CF0920007CDE4098573D02790160A8EE704F8FE827D01992543CEAF4D8988C19C6B2B7B6B6CAC18ECEB2DB71';
wwv_flow_imp.g_varchar2_table(80) := 'B0B353B61A56062CAB0BEBABC3B7CB5EEF660AD43F66FBBABA8C59F42A0F63022221B08E40D80FF5FF3361F711FF20E0894056F70018526E531757BDE6DC90A4E251E7C7EE19EB383C30688C2F25F2F0B66D8ED933D9AC9C53E2C4314135222211D12B18';
wwv_flow_imp.g_varchar2_table(81) := '2286BAB2CBCB8658A22060170104805DED8DB74E04D4D8702E95768ACD87EF5002207F50C33F4BA6390ACAAE9D5D1DEA6F65FEED54BD00A692EFCCCC98A2AB12B767CB16D18F0976AACCAD97C7291FE1361208BFCF0880F0B7311E7A2090BF33CC668C29';
wwv_flow_imp.g_varchar2_table(82) := 'B7363619E3AB11B9E07207DB6DDA12B74403BB5CCA9E320C4D9458B5E7EC873B3A241A8B3BA6CF2EAF08C3008E7888B08C0002C0B206C7DDC204F4064039D58D5D3856A4219190A6445C6AF9D2BBFE2DAC9877B46B345CFC4AB5BD296EF67F5189136D63';
wwv_flow_imp.g_varchar2_table(83) := 'A9F59492BFB7A1510980986311BA070001E088878875046C384400D8D0CAF8E84AC06D89D8E1BE3EA9E4C5D5D5D6D2A7E30000100049444154409520AAC6B823125147FEFCA7E701C4958DB5B44EEFD1D0DBE6BC8D717E2580CB5C8F5ADA4FDD10A82601';
wwv_flow_imp.g_varchar2_table(84) := '0440356953973F09E472925D314F0E3BD0DD230D35DE00480B80863AF332C4F994611F8312E9BB95DDDCD020526301108944647BFB1631BDF47E0FA678E2202062070304801DED8C970602392500DC26000EB6B5D57C0740ED42A38B00185B306F65ACCB';
wwv_flow_imp.g_varchar2_table(85) := '28F67D6F7EDE98B5DD658E8031731923F77774184BCBD10360E443A43D041000F6B4359E3A11D063FFA6098091A8EC6C35EF84E75474B9C3EBD73DC5AF50D95727260B059725ECDAE484B19C0E9F08803DAA07A0CED05BE326F68C4E126905015B9C4400';
wwv_flow_imp.g_varchar2_table(86) := 'D8D2D2F8E948403F03C0315247A86EE5EE86467D54F3F78EF676A30D672AB819CF993B778C75EFEF346FC263CC5CC6C883EDED1255A2CDA948FD602051BD3E4EF18443C0160208005B5A1A3F1D09B8CD0AEF6B6E91C6B8F3CC72C7822B1071B8AB5B624A';
wwv_flow_imp.g_varchar2_table(87) := '9038153D3C3525E75DEED49DF29AC2CF4D8CCBF0F4B463127DC7FD91FE7EC7F86A46F4D5D74B9D69C5462E2BA6151FD5B495BAFC48C01E9B1000F6B4359E3A107013007B3B3BA43EEA0F01B0478991437D5B1D3CB91FFCC2D9B3F70FCAF8D7ADCCFE2D1D';
wwv_flow_imp.g_varchar2_table(88) := '72C427C324896854BA152727F773D91C7B0138C121DC2A020800AB9A1B670B11701B13DED5D121AD8944A1AC550FEBAAAB934FECDA65ACF7AEBA53FFABF3E78D693613F9B573E764C4B0CB9F5E98F8A3BB774BAD5700C8DA2B223BB66C59FBB6E14075FF';
wwv_flow_imp.g_varchar2_table(89) := '3311700315021E10B0E9030160536BE36B41027A6D78C188078143ED868BC98334D5FCF8C4E00EE96F6E3656F9E695CBF2C2952BC6345E22BF73F98ABC75D55C4E474383FCDCDEFD5E8AAB5A9A3D6AA8C45990A81E800A2E97AC9A93540481120920004A';
wwv_flow_imp.g_varchar2_table(90) := '0448F66013D05B00BBF600F8E01900EB290F3535C9678F3CB13EA8E0F14BE7CFC95F153D1C9093AF9D3923DFBF70AE60D9AB81FAEEFFD347DE279DAA676235CC0F9FFB3BB64843DCA1D746F500E41FFCA43EFD602B36F889805DB62000EC6A6FBC7D8480';
wwv_flow_imp.g_varchar2_table(91) := '9E11AEDF8F04AF7D8DA8B1FF6E7587BB16E093839FD8B94B86D4B8BB9B396F5EBB2ABFF3EAAB726E131303F584BF7FA3F2BC75FD9A5BF132A87A47FEFEC143AEE9AA9D605F6B9B240C1301F5CA0FBDFF43B5EDA23E08F8890002C04FAD812DD52790C948';
wwv_flow_imp.g_varchar2_table(92) := '2EE3FC14C056D5D5AE279555DF30738D7AA6FB2F7CE083E6440F62EFCE4CCB975E7F5D7EF78D37E4A5EBD7E5BA1ACF9F5FDB0C2727FAF8DAF48C8ABBA6D2FC40BEF4831F18C7FC1F142BF5F1B8FCD2534FD57C8BE4557BD67FF6D4D54B42D9B73E6CFD71';
wwv_flow_imp.g_varchar2_table(93) := '2E9D11D1FB3FAC0FE4D87A02B6014000D8D6E2F8FB10819C120062E80A6E6B6C9488FAEFA14C3EF9F299ED3BE4BFF8D0939EADB9333E262F9C392D9F7FF515F9972F7C477EED1B5F57EF6FE48FBF70F415157746EE8C8F7B2A4F6F4BFCD927DE2F9FDEB6';
wwv_flow_imp.g_varchar2_table(94) := 'DD53FA6A278A47A352174F3A569B6F77C758222060070104801DED8C970E04DC2E044DC9A444221187DCB50DD63D139F7BEC88FCCCE347AA6EC8B3BBF7C83F39F2842838E2D757326158BA99CBD203E0D786AB995DF6558C00B0AFCDF1783D01DD03B0FE';
wwv_flow_imp.g_varchar2_table(95) := 'FB23C71DF50D12F5E7F53F6FA9DE80E77F50BD003F71E060FE7BA5FF449518FA919DBBE45F7DEC59E3864495B6C34BF94D861E00DDEBC31C002F1449136602088030B72EBEB912C8B98C03F737354A547CAC009487C9684CFE97A73F2AFFD5934F492C1A';
wwv_flow_imp.g_varchar2_table(96) := '552195F9D79848E4EBF8ED4FFCA868E151995ACA576A93611260BE16C3D04F3E9E3F5611B0D1D9CAFD5AD848139F8347C0450024E309698AC7C5EF2F7D41FE15D525FFBF7EF253D2D9D8585673B5FC196869957FFEDC27E51F3EFE3ED1BD0065ADA04285';
wwv_flow_imp.g_varchar2_table(97) := '35B92C4D74137F15328B6221E01B020800DF340586D48280DB1C809664C2F75DDDEBB97D7AC7907CE1D39F91BFFBBE27A45EDDB1AF8F2BE6B8ADBE5E7EE6FD1F903FFECC4FC94F6EDF514C1135CBA3E76F182B7719FE31E625326404EC7407016067BBE3';
wwv_flow_imp.g_varchar2_table(98) := 'F503026E7781CD89E48394C1F9186A6A96FFF9434FC91FFDD44FCB679410D8A2BEEBEEFB58D4FD7FF758342A0DAAC76370CB16F96975E1FF773FF977E4573FF021E948D60507C0034B75AFC883C3821FB94CB660388110B08580FB2F822D24F0D34E02D9';
wwv_flow_imp.g_varchar2_table(99) := '9CD1EFE632DC451B2BA860E43ED56DFF2F941078F1677F5EFEBDEA15F86F3EFC11F9C4EEBDF2C16D8372A0A747B63637CB8ED63639D4D32B4F0E6E974FEED927FFE0E98FCA9F7CF667E4AFD4FBD7D485FFA08AAFA089152DBAD94DB4643315AD9FC28343';
wwv_flow_imp.g_varchar2_table(100) := 'C0564B1100B6B63C7EDF27A007B8EF1F15FCDB146001B0E65024228FB56F915F3E74587EF3B94FC8177EECC7E54F7FF233F28D9FFD05F9EACFFCAC7C49DDE5FFFEDFFACFE5373EFE9CFCD2C143B2BBA5652D6B900F5AD5F08DC97E560198E810670381A8';
wwv_flow_imp.g_varchar2_table(101) := '0D4EE223048A2590545DE2C5E6255F6D0968F1D6924C3A1BE13201D4392331E12260AF3708007BDB1ECF3D2C03D31711400593404B22695EB1E0A1FD83E9395643C01B010480374EA40A2B01F31480402C010C6BD394EAD7F6E66689449CC77818022895';
wwv_flow_imp.g_varchar2_table(102) := '7038F2DBEC0502C0E6D6C77757020DB1B86B1A12F893405D3426CE977F65B3CB045095827F100835010440A89B17E74A21A02F1E7531FE172985612DF33625E22E43002C03AC65FBF8A36EBBADE0D7CDEEF6C77B03814824A2EE2023861444F99980EEBD';
wwv_flow_imp.g_varchar2_table(103) := '31EE5AC81C003F371FB655810002A00A90A9229804E2B198E4D47FC1B41EAB75EF4D42B5A11309AEFF4E64EC09B7DD530480ED6700FE3B12D093C4B84838E2F17D84A7B6F394C8F7AE6220048A228000280A1B994243C0D0C39FC966458D0284C655DB1C';
wwv_flow_imp.g_varchar2_table(104) := '59CA6624A5DAD0E8370D6CC413EE48BC4300700ED84BC0E5C73FCBDD61A0CF8D85745A3286FDFE5D9A3FD0BE633C04BC10400078A1441A6B092CF1C4B8C0B6FDB26ABB9C690E070A20B06D5B0EC329430401C059603701978B80BE8BB41B5070BDBFB7B4';
wwv_flow_imp.g_varchar2_table(105) := '64BAFC0BE33BC2CB72020800CB4F00DC37139857DDC8E614C4FA95C0981600A6611C17F1E757BFB0AB1C042843134000680ABCAD25109188D1770480118FAF23E75329995E5E76B61101E0CC86182B082000AC68669C7424E07211D01711C7BC44F89AC0';
wwv_flow_imp.g_varchar2_table(106) := 'ECCA8AD1BE48C42CFE8C99890C34018CBF4F0001709F037F6D2510355F0416190208EC99319B320B80C03A86E11028130104409940524C300944222E0220930EA663582D4B6EE2CDB04B20F8C24C00DF560920005649F069278168CCE8F7DC4ACA184FA4';
wwv_flow_imp.g_varchar2_table(107) := '7F092CA4CC6D1789F2F3E7DFD6C3B26A10E0FF806A50A60EDF1288B83CED6FCE651CD9B78E6198B8B61D02C0CAB304A77F480001F043161CD9482016377AADC791A75DEE248D0510593302F32B861500CAAA0843008A02FF6C268000B0B9F5F15D2271F3';
wwv_flow_imp.g_varchar2_table(108) := '10C0E8C2BC18779383A16F09CCB8F4DE20007CDB7415348CA2D7134000ACA7C1B17504DCC681AF4D4E89692F19EB8005C561D568B34BE61E0061082028AD899D15228000A810588A0D0601B7BBC0C9C505F727CA05C355ABAC9C49A765C1340410894824';
wwv_flow_imp.g_varchar2_table(109) := '12B18A09CE8AC0E0610208808779F0CD36027A1C38E2FCBF416A2525EC0510BC93E28E126E994CC6D970DDE6F40038F321C60A02CEBF7C56B88F93B613C8CECF8BE4B28E1872A915B9393FE7184F843F095C9C99313E0A58B219C9CCCEFAD378ACAA1001';
wwv_flow_imp.g_varchar2_table(110) := '8A7D940002E051227CB78640766949D253D3AEFEDE4600B832F25B82AB33D3B2E8B27A233D3925998505BF998E3D10A81A010440D55053919F08E81FFEE59BB72497366F16A36D1E9E9B97455377B24EC4DB5704AE4F2B6167E8D9D1C6EAB65FB9332C59';
wwv_flow_imp.g_varchar2_table(111) := '4480C611FA370E6E248000D8C884909013C8CCCD49EAEE88B1EB7F3D826B5393B292751E26589F96637F10B8AB05801753D450C0CAF0B064F4509097F4A481408808200042D498B8E24E4077FBA746463CDDF9AF96766A741401B00A23009FD95C4E6E4D';
wwv_flow_imp.g_varchar2_table(112) := '4F79B634A77A77F439414F806764014C88C9850820000A51212C9404F45DDECAEDDBA27FF037E3E0CCF292A45CBA9337531E692B4B602AB522E9D4E61EE2944BA765F9F61DE60454B66928DD670410003E6B10CCA90C017D77971A19DDF4C55F5B93D117';
wwv_flow_imp.g_varchar2_table(113) := '874CF8860072EA4E59DF2D6B1FC3F41E5B5E56EDBC390190F75F893C3D34A48562FE3B7F424300470A13400014E642688808E86E7F3DCEAB277D15E3562E9B936B215A09F0D6C4B87CEEE82BF263FFE92FE46FFFE59FCBE75E7D594E4C4D1683C69779CE';
wwv_flow_imp.g_varchar2_table(114) := 'CF4C4BB1C2469F23A9BB7725BBB8E84BDF300A02E524800028274DCAF21D017D37A7677A6FB6DBFF2147D49DF2E86238968BBD393E26FFED5F7D558E9E3F27F7D4457F448D951FBD705E3EF7377F23C726271E723BA85F2E4DCF485AB559B1F6EB7385E1';
wwv_flow_imp.g_varchar2_table(115) := '8062E9F9311F36391140003891213CF004F49D7FBEDBDFC3523FB3B339B939332BA910AC04F883D3A7249BD9B843DEDCF2A27CE5E27B9251DDE06616FE8FBDA637012AB5ADB299FC4A112D20FDEF311642A038020880E2B891CBE7047417EEF2ADDBA2BB';
wwv_flow_imp.g_varchar2_table(116) := '74DD4C8D4522124B24C4F1A5EE26AFAABBE5F94C11E3CA8E85563F42778B9F1B1D71ACF8DAF8B88CBA3D40C731B77F226EA921009335CD757522AACDC5E5A5CF9D956186035C30F93E1A039D0920009CD910135002FAAE6D45AFF35777716E2E34D437C8';
wwv_flow_imp.g_varchar2_table(117) := '33FB0FC8FEC1EDEA9AE0FC7098B76FDD92F9F4C63B67B7F2FD149F5677F7D96CCED1A4EB1313CA47F78D911C0BF041C4746A454667671C2D8944227278DBA0BCFFE021696E68744CB716A1CEA1953B77581DB00684833011400084A935F145D6BAFDD585';
wwv_flow_imp.g_varchar2_table(118) := 'C00D474322294F1FD82FDBBABB65977AB71A2E082B8B8B72652ED87BC7EB6B7F24E22C72526A6820A37A3BDCB8F939FEDDC9495936F462343536CBF6AE2E39D8D9294FEDDD2BF5BA3740CC2F3D27400F25E973CB9C9258FF11C02213010480890E718122';
wwv_flow_imp.g_varchar2_table(119) := 'A0B7F7CDAFF3F730E65FA77EF89F3D7244065ADB44DDFA4B4B32295B9A9BC5F1A5EE9EDF73E95A76CC4B44D508BC7E7758D2CBCB8EF5B5B53449520DF7449510EA6F6F974F1E7E4C12EABB63860711392528F5B985087800848F5010400084A21971425F';
wwv_flow_imp.g_varchar2_table(120) := 'FCF55D9ABE5B73A3D1A8BAFD3F79F8B0743735AD25D5F3007A5A5BD7BE173A38ABC6C8675C1E3053281F61D52370ECEE5DE316CF1D2DAD1259F718E00E25FA9E3D74589AD539E166A53EB7F273027876801B2ADFC46388990002C0CC87D80010D07765A9';
wwv_flow_imp.g_varchar2_table(121) := 'E161D177696EE63625EBE4994387A4B3B96543527D31D810B82EE0AD5BB764261DEC8980EBDC09DDE1BC6A9BDB2E4B193BD689BE55005BDBDAE4A90307A4419D1BAB614E9FFA1CD3F34BB2865E06A7BC8443C06F0410007E6B11ECD91481FC84BF3BEAE2';
wwv_flow_imp.g_varchar2_table(122) := 'AFC6AFDD32EA3BFF671F5377FEEAAEAF50DAD6FA7A89ABA18042713A6C7E7151EE2EB1418C66E1C7F799D91959595A7234ADB5AE5EDA541B174AD0AF7A7F9E7BFC71D1434385E2D787E557072831A8579AAC0FE7D86F04B0C78D0002C08D10F1BE25A07F';
wwv_flow_imp.g_varchar2_table(123) := '8053A3F73C2DF56B5463FE9F74B8F35F75301E8F4B5BCBC69E81D5787DF7776E323C3BE6ADFA158ACF5C4EDE1E1B938C4108EA391E8DAA8D9DFCED54BD039F50C3016D86C9A0AB79F3C3012323A2B7985E0DE3130241238000085A8B616F9E80EEF6D7BB';
wwv_flow_imp.g_varchar2_table(124) := 'B5E98B723EC0F0A7B9AE419E79EC716977B8F35FCD1A5563C35D6A8C78F5FBA39FFA47FFFCF8982CA8AEE647E3F85E5B027A71E35BA25471390000100049444154F9F17F7D54D8968EB65689AB362E1C7B3FB44B09C00FABE18026D55B703FC4F96F6E65';
wwv_flow_imp.g_varchar2_table(125) := '45F416D30C073833AA650C75BB134000B8332285CF08E4BBFD87EF8A64DDD7E537ABBBB96774B7BFBABBF3E2861E0FD613029DD2EA7900531E561938E527BC320496D4B9707174D4B9F048543A0DE26E7DC61E25023EA18603EABDCC09503D0EF9D5014C';
wwv_flow_imp.g_varchar2_table(126) := '0C5C8F90E38010400004A4A130F33E017DE79F9FED9F5AB91F60F8AB27FCE9D9FEBA6BD790ECA1A8EEA66649C6E30F85ADFF32363323A34C005B8FC417C7D7E71764D1B04F433C9190B6C646CFB6B6ABB4CFA921A356F5E996493F4A78656454F490945B';
wwv_flow_imp.g_varchar2_table(127) := '5AE2AB45807ABC10887A49441A08F88180BEF8EBBB2D3D09CBCD9EB6C646F9C49123E2E5077C7D5975F198343534AC0F7AE8389749CB65C385E6A1C47CA90E815C4EDE5243335943CF4C6B638351D81532B4ABB5559EDE7F405ABC2C115482540F49311C';
wwv_flow_imp.g_varchar2_table(128) := '508824617E258000F06BCB60D74304F4786BFECE5F75B93E1451E04B8BEAEEFFD8C143A2EFE20A44BB066D317515AB8B8DDE0FC0B51012548D4056D5F4C6881A12529F4EFFFADADA252ACEBB203AE5D3C3017AD9A85E41E294662D5C0D43A4EE8E883E57';
wwv_flow_imp.g_varchar2_table(129) := 'D7C238A809012AF54620EA2D19A920504302EAA2BBA2675C2F3B2FF15AB5AEB9BE5E3EF9D8E3B2458980D5B0CD7E76AA316089385F2CCE8FDE93BB86E5669BAD8FF4A511585617DED30601A077FDD3177243931A0DD0FB43E8E180360FE754569DA3A9B1';
wwv_flow_imp.g_varchar2_table(130) := '311175CE1A0B2512023E208000F0412360828180FA21CD5FFC17DDD7DFB7A9F1FBE71E3F222D75758602DDA3DA1A1B251E4F3826BC707758AE2FCC3BC613515D02E76667657676CEB1D2782C2E7A6E8763020F115A043C7DE0A078110199B939D19B0521';
wwv_flow_imp.g_varchar2_table(131) := '023C80AD48120AF54A0001E09514E96A42203531219919E7A7BBAD1AD5D6D824CFECDF2FED86F1FBD5B46E9FCDAA8CCE56E7FD0032EA2EEFF5D111B76288AF06012510BF7DEBA664579C27853634354A32112FD91ABD75F447F71F90C68646D7B232B333';
wwv_flow_imp.g_varchar2_table(132) := '929E9E764D470208D4920002A096F4A9DB4820A3EEECD2E3E3C6343A52EFE0F7B78E1C11B775FE3AAD97777D34263DA67900AA907786EFC8881202EA907F3524B098CDCA77AF5C565DEE7A26406143FA3A3A24E2B2FEBF70CE8DA19DCDCDA25796E85D05';
wwv_flow_imp.g_varchar2_table(133) := '37C63E1C92BA774FF439FC7028DF2A4D80F2BD134000786745CA2A12D013A9F2DDA82E7536A9BBB1E70E3F2675C9A44B4AEFD11135FCBF5D5D344C392E0CDF956BF30C0398185523EEACBAD31E37ECCE188FC5A47F4B47594DD1934B9F3E74C87D7580EA';
wwv_flow_imp.g_varchar2_table(134) := '9D48DD1B13BD4CB0AC06501804CA44000150269014534602FA8753FFA8E79CEFEA746D097557F7A13D7BA4B5A9497F2DEBBBADB1519A9A9A1DCB4C2D2FCB6B230C033802AA42444E9D27DFBE73C77881D5DBFFF6AAB62CB7397A52E18776EF9648C4FC13';
wwv_flow_imp.g_varchar2_table(135) := 'AA97ACEA9E00E60394BB059CCA237C3304CC67EF664A222D04CA4420B3B020999959D7D29EDC7F5006B76C714D574C02BD2DF08E9E1EE7ACD98C1C53179F1156033833AA70CC92EAFE7FF9FA55632D039D5DAEDBFF1A0B30440E7476CA87F7EE33A4B81F';
wwv_flow_imp.g_varchar2_table(136) := 'A58701F41E16F7BFF11702FE218000F04F5B60C90302E93135EEEF72F7FFD88E21D9D9D5F52047653E74F931D585EC54FA7BC377E42AAB019CF0543CFCCCCCB48C8E4F38D613516D37502181B85AE99EDE1ED937B06DF5ABE3673ADFA3E5FC9C02C78C44';
wwv_flow_imp.g_varchar2_table(137) := '6C8A008937470001B0395EA4AE3081FCDD92CBE4BAFEAE6E3932B85DF4587D25CDD9D2D0202D0D0D8E55AC283B8FDE33EC3FEF98938852096455F7FF0B776E8B5E77EF5456576B9BB41ADACF29DFA6C2D549F8819D3B659BEA0D30E5D34B03D31E56B398';
wwv_flow_imp.g_varchar2_table(138) := 'CA200E02E526102D77819407816209E45497AE9E3465CADF944CCA0777ED926834624A56B6B8EDA6610055CB89E161195E72DFA34025E55F19092CAB2198A337AE1B4B1C526D178B56FE274E3F61F0C9DD7B2416332F35CCAF6851C2C5683491251020EB';
wwv_flow_imp.g_varchar2_table(139) := '660954FEFF8ECD5A447A6B0964A6A7454F9A320138B06D50DAEAEB4D49CA1AD7D7BEC5B8C2E0F2C85DB934E7BC094D598DA1B0350267D4DDF46DC312D184EAFE1F6C6F5F4B5FE98326754E1EDCB1C3588D5E0DC0DE0046444456990002A0CAC0A9AE3081';
wwv_flow_imp.g_varchar2_table(140) := 'ECF2B2E4C7490B47E743F5063D3B7BFBF2C7D5FAD3D5D8245D6DCE179285F905F9DEF09D6A99433D8A80EEFEFFAEEAFECFADA4D4B7C2FFDA54F77FA3EA2D2A1C5B99D0C37D5BC5ED11C2E989092572D39531C0F252717FF30410009B67468E0A10D063FF';
wwv_flow_imp.g_varchar2_table(141) := 'FA0EC954F4FB77EE92FA32ECE866AAE3D1B8A81A6AD86A1ADFCD65E5BDD15136057A145C05BF2F6432F2CAB5ABC6CD7F06BBBBA4E29344E4E157221E93C7766C7F38F0916FFA1C4F4FBBEF6CF94836BE42A02204100015C14AA19B25A0274999F274B4B4';
wwv_flow_imp.g_varchar2_table(142) := '89DBE63C52A1D7B6D6568918CABE3A3A22E767DD972D1A8A206A1304F4ECFF3BF7EE39E668ACAB97FE8E4EC7F84A460CF5F44AB7A1C748D79D5D5CD01FBCCB4A80C28A21800028861A79CA4A40DF15E50C7BB9472311D9AFEEACCAB59DEB668D6FAAAB93';
wwv_flow_imp.g_varchar2_table(143) := '6EC3CE800B8B8BF2CD9B3724E3F3095E31C571B3BEFB2D7D2A9B956FDCBA2939D50BE0645B4F7BBB6CA972F7FFAA2DF5B198ECE9EF5FFD5AF033974A4B2EE53C7C5130138110A80001044005A052E4E608B86D92A21FF033D0D6B6B942CB983A1289C86E';
wwv_flow_imp.g_varchar2_table(144) := '7567E758A4BAF01FBF7E4D2EFA7C32A01E3B77F4212011FAF90BDFBC70DE68ED36835833662C53E4607BBBD429D1E8549C16BC59251A9DE209DF3C017214470001501C3772958B80BA786617CCCBE8BADA3B44DF5995ABCA62CA195417957AC35DE5C8F8';
wwv_flow_imp.g_varchar2_table(145) := 'B8BC30325C4CD155CB13866D68BE7EEB96A40CC32D09D5FDDFA5866CAA06B5404589785CFA3ABB0AC43C08CA652533CF30C0031A7CD4900002A086F0A95AF25DB96E77435D35BCFB5F6DA3643C2E5D6DEDAB5F0B7E7EFFCA1599300C6514CC44A0670233';
wwv_flow_imp.g_varchar2_table(146) := 'AADBFCF9F72EA893C659CA6CEFEC14BD5784E7422B90301289E4370632CD1BC99FF34AFC56A07A0B8BC4E5620920008A2547BEB210D063A1D99565C7B2A2F184743697FF613F8E151A2276E98D65D48FBB5392EB2323F2FC5D96043AF12935FCA5B151B9';
wwv_flow_imp.g_varchar2_table(147) := 'E6B2F3E29EDE5E89444C97DE52ADF096BFAFB95962868D817299B4E88DAFBC95462A0854860002A0325C29D523013D1E2A863BA14ED59DDB60E87AF7584D5992F5A99E889E36E75E80941232CF5FBD222BD94C59EAA3901F12984DA7E4AB972EE67B8C7E';
wwv_flow_imp.g_varchar2_table(148) := '18FAF0515773AB74AB0BEFC3A1B5F9D690484873A3F336D2FA9CCF9FFBB5312F54B5E24CF1041000C5B323671908E40CB3B975F15B5B5B2AF634375DFE66DEC9785C76BBCCF0BEA8C6A88F8E8F6FA658D27A20F0D6C4841CBF72D531A55E29B277A05FD4';
wwv_flow_imp.g_varchar2_table(149) := 'EDBFF8E5B5A5A1D1688ADBB96FCC4C2404CA40000150068814513C01D38FA0EEC8D53FA2FAC7BDF81ACA9B73B07D8B3424928E852E2C2DC957F5236A0DBD1A8E99892848605175977FE3C675316D13AD7B8A7674F714CC5FAB40BD73A5B16E17F16BCC4B';
wwv_flow_imp.g_varchar2_table(150) := 'E403027C94420001500A3DF2964EC0F02318894424A1EEBA4BAFA47C25C4E23139B87DBBB1C013D76EC83BD353C634447A2770616E4EBEA727FF19B2ECE9EB533D455A321A1255392AAECE155395B94CD6144D1C042A4E00015071C4546022E0D603E037';
wwv_flow_imp.g_varchar2_table(151) := '01A07DD9DBDB2B8D86EEDDE9E949F9FACD1B3A29EF321078410DAB64979C278A36ABB618D8D251869ACA5B44D2300950D764EAD1D0F1BCDD0990A234020880D2F891BB540259F35D5022EABF53548B92A15E7377F3EBAACBFACAFC7CA974ACCF7F6D615E';
wwv_flow_imp.g_varchar2_table(152) := '5EBC745124E77C9EEC1B1810D31E0DB58258974818AB6612A0110F915520E0BF5FD72A384D15FE21605C0AE5C3218055723BD5787363B26EF5EB86CF91B131F9164B023770D96CC08B2323323CE6BCEF7F321E973D3D3D9B2DB62AE9E3CAB686BA7AC7BA';
wwv_flow_imp.g_varchar2_table(153) := '72E98CE4D23C19D011906B04094A258000289520F98B27A027CA39EFE922FAE48C2911507C0595CBB9A5A141F6E959E70E55E81FF6EF5CBC287A029B4312825D08DC5A5C946F5D5677FF86743B7AFA24198F1B52D42E2AAE7AAFEAEA9C278CEA5E0DD310';
wwv_flow_imp.g_varchar2_table(154) := '58ED2CA7665B08E8DF585B7CC5CF8011884463E2AF695D0F03DCDBB7554C2B146EDCBD2B5F5443010FE7E29B5702DF513D28176FDE724CDEA07A60F6F56F758CAF75841E2A8AAB73D8C98E7CEF9716C14E0908371220B274020880D2195282A504EA1209';
wwv_flow_imp.g_varchar2_table(155) := 'D9D1DBEBE87D369396AF9D3B2F3717D9F7DD119243849E3FF19533A7450C9B2A0D7475C996C64687126A1FDCA8CE0F31F470E9A7020A02A0F60D65B10508008B1B1FD74B2770A87F40A286BBBCDB7787E54B57AE945E916525FCF5CDEB7273D479EC5FE3';
wwv_flow_imp.g_varchar2_table(156) := '18F2E9D8BFB64DBF63D1A84422863E2C3DB11101A05115F1264B390844CB51086540C056025B9A9AA46B8BF3F6C0A27EE4BF75EEAC9C9B9DB115D1A6FD3E39332D7F73F68C68764E99077B7A7DB3EDAF938D8443C0EF0410007E6F21ECF337017587B76F';
wwv_flow_imp.g_varchar2_table(157) := '609BD1C6697541FBE34BEF19D310799FC07226237F7EF58A8C4D4EDE0F70F87B60604062517EBE1CF0843E1807CB4380FF83CAC391522C26B0ADB555FA3B3A9D09A86EDE17CE9E95B727279CD3109327706C6A529E3F73367FECF4A7BBAD5D7A9A5B9CA2';
wwv_flow_imp.g_varchar2_table(158) := '098700043C1240007804453208381188AB3BD103DBB74BC429810A4F2F2DC9EF9F335FD85432ABFFCDA5D3F2A7EF5D90D4A2F3064A89585C8EECDC29AAE3C56A56763B8FF7E5228000281749CAB19A405F4B8B0C6D352F493B76E58A7C7774C46A4E26E7';
wwv_flow_imp.g_varchar2_table(159) := '8F8E8FC96B972E9992C8CE817ED9AA581B131109010878228000F0848944103013D0FB01BC6F70BB2493CEBB03669697E4F3A74F4A4E0D09984BB32F767C6545FEC3C913925971DEF35F3F85715F6F9F70FB2F56BF70BE7C041000E5634949961368AEAF';
wwv_flow_imp.g_varchar2_table(160) := '97BD6A28C084E1C2B5EBF217B79D37B731E50D73DCF755CFC8A55B378D2E3E363424ED0D0DC63444420002DE092000BCB32225045C091CECE991B626C304B55C56BE70FC982CA8F16ED7C22C49A0B7FCFD8FA74E4AD6F060A8F6D636D9D7671E62B10497';
wwv_flow_imp.g_varchar2_table(161) := 'E56EE27E39092000CA4993B2AC27501F8FCB13BB7789A99B7A746444FEE4FA35E1759FC05FDFBC2177EEDEBDFFA5C0DF58342AEF63E25F01320441A034020880D2F8911B021B086C6B6B972197BBD53F3AF68EDC58608BE05333D3F265D52392356CF9DB';
wwv_flow_imp.g_varchar2_table(162) := 'DFD72783ADADC20B0210282F0104407979521A04F237FFEF1B1C94682CEE4863515DF8FEC55B6F583D2170369D92DF7CF7984CCFCE3A724AC6E3F2C4B641C943155E10804039092000CA4993B220F080404B7DBDEC5122E0C1D7821FC72F5FB27A28E08B';
wwv_flow_imp.g_varchar2_table(163) := '57AEC8C92B970BB2590D3C3434246D8AE5EA773E6D2680EFE5268000283751CA83C0030287FBFBA5ADA9F9C1B7021FB99CFCDE9B6FC87B863BE002B94211A47745FCF289E3C6897F0DCDCDB2572FFB0B85C7380101FF114000F8AF4DB02824049A54F7F5';
wwv_flow_imp.g_varchar2_table(164) := 'C11DDBC5D47DBD383B23FF528D81AF18C6C02564AFC54C5A7EEB9D77443F23C1C935BDABE2133B86A42E16734A42B8650470B7FC041000E5674A89105823B07D4B870CF4F4AE7D2F7470FCD225F9E2D5AB85A24219F6FB172FCAB9EB667FF5C4BF9D8A5D';
wwv_flow_imp.g_varchar2_table(165) := '2801E014047C420001E09386C08C701248AA3BD86D6D6D66E7D4DDFFEF1E7D454E4C4F99D38520F68D8971F9CB932724E7E24B5F6BBB44A3BA1FC0252198A53F2F0000100049444154D19610C0CD4A10400054822A6542601D81B88727D7645229F9CD77';
wwv_flow_imp.g_varchar2_table(166) := 'DE16FD409C75594375A8373FFAF5B7DF945935ECE1E6582C97754B423C042050220104408900C90E012702B96C4E4E5CBB2AAF5D38EF94E4A1F093D7AEC997AF5E11C9B9DD1F3F942D305FFEEDF97372F9D66D4FF6BE7DE9A2BCAB786415434F1948146A';
wwv_flow_imp.g_varchar2_table(167) := '02385719020880CA70A554CB0964321979E3F245397DE3866B77F71A2A75D7FBEFDEFC81BC1BC2A180B72726E4ABC78F296DE3EDCE3EAB44D0D91BD7E5D8E5CBB2AC58AE31E2000210281B010440D950521004EE1348A9EEFCEF9F3D23978687BD5FFCEF';
wwv_flow_imp.g_varchar2_table(168) := '6795CCD292FC9B636FCBB42AE34150E03F74D7FFFFF6DA2BB2B0ECFCA4BF424EEA7E90F3C3B7E5B5B367657965A55012C2AC20809395228000A81459CAB592C0F8DC9C3CFFEE71B9333959B4FFEF5EBD2A7F72F182BA5BD697C0A28BF145C69CBA93FFAD';
wwv_flow_imp.g_varchar2_table(169) := '5327E4F6C848D1F6DC9E9C90EF9C3A25538A6DD18590110210D8400001B001090110288EC0D8CC8CBC7CE68C4C2D95BEC7FF1FBCF1867CE38EB7F1F2E2ACAD4EAE3F53DDF85F3979B2E4CAA6E6E7E445C576786AAAE4B228205804B0B67204100095634B';
wwv_flow_imp.g_varchar2_table(170) := 'C91611B836322ADF397942E69797CAE3753623FFF7CB2FC99B13E3E529AF06A59C989A94DF7EF515C9A45365A97D41B17DE9CC69B971EF5E59CAA31008D84E000160FB1980FF2511D05DDC276FDD92D7DF3B2F99ACB7096EB1B63689777649ACD9B04DB0';
wwv_flow_imp.g_varchar2_table(171) := 'B26A7A6141FEAFD75F936BF3F3EA5BB0FE8D2F2FCB3FFBFEF7646169D168782416BBCFA2A5D5986E35524FAE7CF9FC393975F3A6711BE1D5F47C069D00F657920002A09274293BD40452996C7E96FAE9AB5724A3C6BA5D9D8D4424DED121C9DE5E497476';
wwv_flow_imp.g_varchar2_table(172) := '48A2A747F405D094EFF2DD61F9B7278FCB542A3893E0F4A4BF7F7AF41519191B33B92691785C92DBB6E55924FB7A25DED9694CBF16A9589F50CCDFBD7655D2E9F45A30071080C0E608200036C78BD410C813585477B8AFAB3BD1736A9C5E2F59CB079AFE';
wwv_flow_imp.g_varchar2_table(173) := '44A292ECEB934457D75A2A7D014C2811202A6E2DB0C0C10BE7CECA1F5E382F298F3D0C058AA85A901642FFFAF42979575DA0DD2AD5BE47EBEAEE278B449410E894E4D6AD222E3CE4C1EB9CEA797955B5418A15020F8884EF038F2A4B00015059BE941E42';
wwv_flow_imp.g_varchar2_table(174) := '0233AA6BFE853367E4C6B8F90E77D5F5483C21C9817E89B5B4AC06AD7DEAB0F896F6B5EF050FD41DEF1FBDF9863C3FECF34981CACEBFBA715DFEE2D8DB05DD581F18DFB2450A0D81681EC97EEF22E0D6C484BC70FA8C4CB242603D5E8E21E0890002C013';
wwv_flow_imp.g_varchar2_table(175) := '261241E03E81BBD3D3F2FCF177657A6EF67E80CBDF48322975DB0624D6D8E89832A1BABEA38D4D8EF1F9087571FDF5575E96373C8A8E7C9E2AFF79677252FECFEFBFE4BA7C315A57FF504FC8A366C69A9AA47EC7768924928F4615FC3E3E3723AF9E3D2B';
wwv_flow_imp.g_varchar2_table(176) := 'B755DB144C406040096076A50920002A4D98F24343E0E6E8A87CEFD44959F638EEAC2FEA75DBD5854C890023844844F418B8DB056F7A7E5EFED5ABAFC895F9396371B5881C5B5E927FFEDDEFC8B2CB5C053DE721D1DB23A27C16C32B2F9C06B715EC2528';
wwv_flow_imp.g_varchar2_table(177) := '946D7A69518EAAA1871B2EF30E0AE5250C02B61288DAEA387E43C0330175F7ADB7F4D5B3CF3DCFF46F6E963AD5ED1F897AFB5F2C128FABBBE24E1197F1EF6B63F7E45FBFF3B64CF868DC7B2E9D92FFF1D557656C665ADC5E7A1264B4BEDE2D593E3ECFA4';
wwv_flow_imp.g_varchar2_table(178) := 'AF4F621E5708AC6432F2CAD93372E6CE9D7C7EFE049B00D6579E80B75FA7CADB410D10F025017D51D1FBD11FBF76D5F3B6BE7AA25FB2BF5FDCEE72E591971EFF4E74763C12BAF1EB2B17DF933F38774636BB477E6463512587681B7E47F58ABC7BED8A6B';
wwv_flow_imp.g_varchar2_table(179) := '59F9E58F6AECDF35E1BA045A4025B7F649A2BB5BBCF0D47B271EBF7451DE546FBD6450784100028E0410008E6888B09DC0722A256F5C382F67EF789B7C97EFDEEEE9157D975B2C3B3D394E0F1DB8E5FF7F552FC017CE9F95C58CF76570D1889200FA0A69';
wwv_flow_imp.g_varchar2_table(180) := '283C1251690CF1EBA3F472BFCF5F38277FF6EEB1F5C1058FA30D0D92D42B1E0AC6BA076A2E7A158566EC965ABBF89EEA0578FDE2456185801B2DBFC6635735082000AA41993A0247607A7151BE7DF2845CF738A6AC2F4C09D55D1D6F6F2BCD577501D677';
wwv_flow_imp.g_varchar2_table(181) := 'BCBAFBDB58901A96F8C20F5E975F53EFEBF3F3AE13EF7459FAD26EDA952FA2FA3862AA7E9DD6F4D6CB1EEF2D2DC9FFF483A3F207AFBFE65AB79EDB90ECED152F77F06278E91E92E4D6ADA2CB33245B8BBA363A22DF3E7D5A6694AD6B811C4000026B0410';
wwv_flow_imp.g_varchar2_table(182) := '006B283880C07D02C39393F2F2A953A227DDDD0F31FFD577B77AB29F9EBD6E4EE92D568B097DB72B2EF30174692F9E3F27FFE5D7BE22BF73FAA47CFBD64DB930352513CB4B726F6971C33BAA2EF08B2A4EE72BF4D6F31B32AAD76336B5B221EF9D857939';
wwv_flow_imp.g_varchar2_table(183) := '3B3921DFBA79437EEBDD77E4E7FEF2CFE5FB172E142AE6E1B0484492BD3DA227F53D1C51DCB76863A3D40FED90687D83A70226E766E5C51327E59EE2E22903897C410023AA43205A9D6AA805020120A0EEAA6F8E8FC96BE7CF8B9E55EEC5623D41EDFE5D';
wwv_flow_imp.g_varchar2_table(184) := '69C24B72CF69F4852ED1D3ED29FDF4E282FC8737DF907FF6FC37D585F9CFE447BFF8C7F2635FFA930DEF0FFEC73F1075BBEE58A69EEFF0B3FFE92FE4D93FFEC30D797FE24FBF24BFA8E27EF5DBDF922FAA2EFF0925301C0B5A1791C82F716C5C17528643';
wwv_flow_imp.g_varchar2_table(185) := '2D2AF4D2CA66F356CAAB35CD2D2FCA8B67CFCAAD7B6346FF57D3F309015B0820006C6969FC34135017FFB3B76FC9F7CF9C914575076C4E7C3F564F6ACB2FDF8BC7EF0794F96FBCAD4D0A6D96E3A51A3D0EFEE8DB4BBED534A5E45D2D4377D997321F62B5';
wwv_flow_imp.g_varchar2_table(186) := '9C429FF9C981FDFD126F6F2F14BD212C954EC9CBE7CEC8D93B7710011BE8F82D007BAA450001502DD2D4E35B02D974465EBB78518E5D719FC99E7742DF81AAB1E86419C6B5F3E519FE24541DC58A0043B1158F8A3636DD9FB95FE19AF476C2FAC14A5EAA';
wwv_flow_imp.g_varchar2_table(187) := 'D18F6A3A7EE5B2BCA5DA3A1D806D95BDF8441A0894420001500A3DF2069E405A8D79BFFADE79B97277D89B2F6A5C5E8FCFEBBB5B6F194A4BA5E703E82570FA825A5A49D5CBADC7E72BD933F2A82789CE0EF1FA20213D81F1826AEBB72E5C10AF1B3A3D5A';
wwv_flow_imp.g_varchar2_table(188) := '1FDF2B4B80D2AB470001503DD6D4E43302B30B0BF2AD1327C4F3EE71D198E4B7F56DD9B8A7BF54F0154924A46EA0BFE8E1800A9AB6A1E8FC9C08353EEFBA8A6143CED202129D9D5237382891B8B7B91897EF8DCA774F9E9079560894069EDC8126800008';
wwv_flow_imp.g_varchar2_table(189) := '74F3617CB104EE4E4DCAF74E9D92A985794F45E859EC7583DB44CFF8F794A1DC891E0C3BE8DE005142A4DCC5975A5EBEA7A2ABEBFE96C61E773F2CB5CE47F3EBB6492AA1E4B5B764626E4E9E3F715CEECD7A7BAEC3A3F5F1BD120428B39A041000D5A44D';
wwv_flow_imp.g_varchar2_table(190) := '5DBE2070676C4C8E9E3B2733862571EB0DD5CBFBF432BF685DDDFAE0EA1F2B11A037C4A9EBDF2AFA813AD537A0708DF90BEFD6AD929FF0A76C2C9CAA3AA1BA8DF4F0835711B0B0BC2CDF3F7D4AF45305AB6321B540C03F041000FE690B2CA90281F3B76F';
wwv_flow_imp.g_varchar2_table(191) := 'CB4BE7CECAA21AFBF7529DBEA825FBFB45CF3AF792BE1A69A28D8D52B763BB7AEF90446F6F7E26BCBE08EBBBF05237DB31DA1F89A82EF6B8441B9BF275EABAEB8786A44E75BD47954DC6BC558C8CC4E3F92113DD765EAA5D52E7C24B4A04BC779B15025E';
wwv_flow_imp.g_varchar2_table(192) := '7855320D6557970002A0BABCA9AD4604F4ACEF37AE5C9663EAAD2782B99A11898A9E5DAEC7962B7A5195E25FFA6E572F15D4C3027A2F82E4B66D52A7DEC98101D1A265F5BD1AA6972DBAF9A297D5D5EDD821BAACD5FCF94F55669D7AE7CBEEEBCDCFF0D7';
wwv_flow_imp.g_varchar2_table(193) := '75EBA191E23DA8604E255674DB257A7AC5CD6779F07AF3F2453976FD9AA43D3EEDF141363E201058020880C0361D867B25A0EFF05E575DFE176FDD124F177F35C69EECED9144678778BD78482D5FEA62A7EF7AB520D03D017AC8422F1D5C7DEBBB731D96';
wwv_flow_imp.g_varchar2_table(194) := 'E8EC143DA1D0D1542D7A3A3AD4F0429DC4D41DFD6AFEFC675393BAF36FCCC7E9BA82C2456FCDAC576D88F2CDD1EF7511676FDC90B72F5F921544C03A2AD53AA49E6A134000549B38F55595C0FCC2821AE33D2DD7C7C73CD5ABF799AF1BDC26B1D6564FE9';
wwv_flow_imp.g_varchar2_table(195) := '0395281A55D7C198D1E45C26638C0F62A45EB259B77D50221E57085C1A19C94F105D648540109B1B9B374120BA89B42485407008E472323A3D25DF387552EECDCE78B25BDF29EB657EFA4EDA538680258A442222EA9F985E8A9B293AA871BA4D75DB463C';
wwv_flow_imp.g_varchar2_table(196) := '4EE4D4E7CC0BA74FC9F0C444505D0E9CDD185C7D020880EA33A7C60A13C8A8BBD8CB77EEC84BA74FCBF2F2B2A7DA7417B91E2B3776917B2A89447E25A0E72BD4E9098B1E1F2434AD7A8F8E9E3F27E7D4D0917E50925FFDC22E08144B0001502C39F2559E';
wwv_flow_imp.g_varchar2_table(197) := '80BA1BDDCCECFB5C362BE353D3F2C2C993F2BA1EC75542C08B917A695D7260C04B52D2049C803E9F9203FDA2059F175796D26979E7CA657951F5248D4F4D893EC7BCE4D36974DA9C3A87F5316F3702C4D7820002A016D4A9D31381B4FEF1D46F97D4B96C';
wwv_flow_imp.g_varchar2_table(198) := '4E266766E4E87B17E49B27F5C62EDEBAFC75B17A06BD7EEB63DE7610D0CB25934AF0E9551EE27172E0C8F4B47C470D09BC71E9924CCFCD797AA0D0722A25E95CF8E654D87196D8E12502C08E760EA497D95C566EAA71FCC995159952EF09F5833AA9DEE3';
wwv_flow_imp.g_varchar2_table(199) := 'AA6BF6CEE4A45CBC7D5B8E5FBC24474F9D9217D58FF3B5D151CF7E46E271C95F04B66CF19C8784E12290E8EC9064FF5691A87962E4AAD77A29E9A5BBC3F23D75AE7D5FF5329DBC7459AE0C0FCB6D752EDE5B5A9269756EEAF373467D2EA5337255F518CC';
wwv_flow_imp.g_varchar2_table(200) := '2F2EAE66E7D34080A8DA104000D4863BB57A21A0EEFE5F3F7F5E9E3F7E5C9E575DB0DF397942F4D6ADDF3A7E5C5DF04FCB1BAA9BFFF4F06DB9363D298BAAABD64B913A8DDE454FAF9BF7DA0DACF3F00E27017D0ED4A92101AF93033585392546B5303D79';
wwv_flow_imp.g_varchar2_table(201) := 'E796BC76F13D25084ECBB78F1D936F1D3F2EDF56E7E837D5FB6BC7DE9113AAB720A5C480CEC31B027E248000F063AB60D31A81AC1AD74F2F2D4A6A7E3EFF4EABBBFF5C3AA5BA60F5C35DD792793EC83FA94EFDE0EBF5F29E339130D404F4B950B775AB68';
wwv_flow_imp.g_varchar2_table(202) := '615894A3AAA74A9F93A9C585FC399A3F57D5392B2ABCA8F2ACCB84C3B5228000A81579EAAD2E814834BFB35FDDE036D1DDFFC20B02EB08E457086C1F94FCF6C1EA5C5917C52104424B000110DAA60D8863AA9BBFD296E67FDCD55DBF1EF39548A4D2D505';
wwv_flow_imp.g_varchar2_table(203) := 'B6FC4854B1B1998FF23DB1FA44C344B2E2EDA8572448949FE08A83A60247029C7D8E6888083C01F583AEEFE8EA77ECC86F631B787F4A7540F13016118F4BFEA2644C14FEC8D59D03E3ED5BA49282510B53BD22417841A04604100035024FB58A402422FA';
wwv_flow_imp.g_varchar2_table(204) := '47501D95F59FEEE2D74BBCEA77EF167D4757C91FF1B21A5E85C24C171CBD5B9E665705337C5F85E694E8E996FA9D3BF34F3ED4DFCB6DB4DE740ADEE5A64A799B218000D80C2DD2969D40ACA559245286D330725F4CAC6EEAA3BBFBB99B950DAF584BCB86';
wwv_flow_imp.g_varchar2_table(205) := 'B07C806A03CD0EB194A7B1F6475FA0133D3DA29F88A89FA6A8BF978B515C3F6F429DB76B957100812A1328C32F6F952DA6BA5011D04F9A4B6EED93584BABE807F1E47F5CF58FA2E91D8D49249EC877EBC7DBDB25D1DB2BBA9BBF7E6848F4A63EFA4E3654';
wwv_flow_imp.g_varchar2_table(206) := '90CAE88C1600C9AD5BF30F3BD22B2234731DA697C2C1CD19B45E2990D4E799EA11D0E75AA2A757B420D0E1FA5C1425A0DCCFDDA8ACF2D67B50E8674F38D768470C5ED69640C4F913DE0000082D49444154B4B6D5533B0444564540FDCE2169D8BBD7FDBD';
wwv_flow_imp.g_varchar2_table(207) := '67B7D4EFDA297AEFFE84BA3B8BB7B555642821AC6DA32FF8C9BE3ED14FC8D3CCB520E062E4B1B52391FCB9166F6F132D08EA0607F3E762C3DE3DEEE7AD4AB3CA5BEF3FE0B1469241A06204100015434BC11080000420E04C80985A134000D4BA05A81F02';
wwv_flow_imp.g_varchar2_table(208) := '108000042050030208801A40A74A08400002B613C0FFDA134000D4BE0DB0000210800004205075020880AA23A74208400002B613C07F3F104000F8A115B00102108000042050650208802A03A73A08400002B613C07F7F104000F8A31DB0020210800004';
wwv_flow_imp.g_varchar2_table(209) := '205055020880AAE2A63208400002B613C07FBF104000F8A525B00302108000042050450208802AC2A62A08400002B613C07FFF104000F8A72DB0040210800004205035020880AAA1A62208400002B613C07F3F114000F8A935B005021080000420502502';
wwv_flow_imp.g_varchar2_table(210) := '08802A81A61A08400002B613C07F7F114000F8AB3DB0060210800004205015020880AA60A61208400002B613C07FBF114000F8AD45B00702108000042050050208802A40A60A08400002B613C07FFF114000F8AF4DB00802108000042050710208808A23';
wwv_flow_imp.g_varchar2_table(211) := 'A60208400002B613C07F3F124000F8B155B00902108000042050610208800A03A67808400002B613C07F7F124000F8B35DB00A02108000042050510208808AE2A57008400002B613C07FBF124000F8B565B00B02108000042050410208800AC2A5680840';
wwv_flow_imp.g_varchar2_table(212) := '0002B613C07FFF124000F8B76DB00C02108000042050310208808AA1A56008400002B613C07F3F134000F8B975B00D02108000042050210208800A81A55808400002B613C07F7F134000F8BB7DB00E02108000042050110208808A60A55008400002B613';
wwv_flow_imp.g_varchar2_table(213) := 'C07FBF134000F8BD85B00F02108000042050010208800A40A54808400002B613C07FFF134000F8BF8DB0100210800004205076020880B223A54008400002B613C0FF2010400004A195B01102108000042050660208803203A53808400002B613C0FF6010';
wwv_flow_imp.g_varchar2_table(214) := '400004A39DB0120210800004205056020880B2E2A43008400002B613C0FFA010400004A5A5B013021080000420504602088032C2A42808400002B613C0FFE010400004A7ADB0140210800004205036020880B2A1A42008400002B613C0FF2011400004A9';
wwv_flow_imp.g_varchar2_table(215) := 'B5B01502108000042050260208803281A41808400002B613C0FF6011400004ABBDB0160210800004205016020880B260A41008400002B613C0FFA011400004ADC5B01702108000042050060208803240A40808400002B613C0FFE011400004AFCDB01802';
wwv_flow_imp.g_varchar2_table(216) := '10800004205032010440C908290002108080ED04F03F88041000416C356C8600042000010894480001502240B243000210B09D00FE079300022098ED86D510800004200081920820004AC2476608400002B613C0FFA012400004B5E5B01B021080000420';
wwv_flow_imp.g_varchar2_table(217) := '500201044009F0C80A010840C07602F81F5C020880E0B61D96430002108000048A268000281A1D1921000108D84E00FF834C000110E4D6C37608400002108040910410004582231B04200001DB09E07FB009200082DD7E580F010840000210288A0002A0';
wwv_flow_imp.g_varchar2_table(218) := '286C6482000420603B01FC0F3A010440D05B10FB210001084000024510400014018D2C108000046C2780FFC1278000087E1BE20104200001084060D30410009B46460608400002B613C0FF3010400084A115F101021080000420B0490208804D02233904';
wwv_flow_imp.g_varchar2_table(219) := '200001DB09E07F38082000C2D18E7801010840000210D8140104C0A670911802108080ED04F03F2C041000616949FC800004200001086C8200026013B0480A010840C07602F81F1E020880F0B4259E400002108000043C1340007846454208400002B613';
wwv_flow_imp.g_varchar2_table(220) := 'C0FF3011400084A935F105021080000420E0910002C023289241000210B09D00FE878B0002205CED8937108000042000014F0410009E30910802108080ED04F03F6C041000616B51FC8100042000010878208000F0008924108000046C2780FFE1238000';
wwv_flow_imp.g_varchar2_table(221) := '085F9BE211042000010840C0950002C015110920000108D84E00FFC348000110C656C527084000021080800B0104800B20A221000108D84E00FFC349000110CE76C52B08400002108080910002C088874808400002B613C0FFB012400084B565F10B0210';
wwv_flow_imp.g_varchar2_table(222) := '800004206020800030C0210A02108080ED04F03FBC041000E16D5B3C830004200001083812400038A2210202108080ED04F03FCC041000616E5D7C83000420000108381040003880211802108080ED04F03FDC041000E16E5FBC83000420000108142480';
wwv_flow_imp.g_varchar2_table(223) := '002888854008400002B613C0FFB013400084BD85F10F02108000042050800002A000148220000108D84E00FFC34F000110FE36C643084000021080C0060208800D480880000420603B01FCB7810002C08656C647084000021080C0230410008F00E12B04';
wwv_flow_imp.g_varchar2_table(224) := '200001DB09E0BF1D04100076B4335E420002108000041E2280007808075F20000108D84E00FF6D218000B0A5A5F113021080000420B08E0002601D0C0E21000108D84E00FFED218000B0A7ADF114021080000420B0460001B086820308400002B613C07F';
wwv_flow_imp.g_varchar2_table(225) := '9B0820006C6A6D7C850004200001083C2080007800820F08400002B613C07FBB082000EC6A6FBC85000420000108E4092000F218F803010840C07602F86F1B0104806D2D8EBF10800004200001450001A020F00F02108080ED04F0DF3E020800FBDA1C8F';
wwv_flow_imp.g_varchar2_table(226) := '210001084000028200E02480000420603D0100D84800016063ABE3330420000108584F000160FD2900000840C07602F86F270104809DED8ED710800004206039010480E52700EE430002B613C07F5B0920006C6D79FC860004200001AB092000AC6E7E9C';
wwv_flow_imp.g_varchar2_table(227) := '8700046C2780FFF6124000D8DBF6780E01084000021613400058DCF8B80E0108D84E00FF6D268000B0B9F5F11D0210800004AC258000B0B6E9711C0210B09D00FEDB4DE0FF070000FFFFB9CB8267000000064944415403007FB9F496260D0CF300000000';
wwv_flow_imp.g_varchar2_table(228) := '49454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1273930946224904811)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1273932294853904812)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1273940727327904824)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(1273940727327904824)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1273941434015904826)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1273941077526904825)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_item_number
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1276598150994948869)
,p_lov_name=>'LOV_ITEM_NUMBER'
,p_static_id=>'lov-item-number'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select item_number || '' - '' || item_name as display_value,',
'       item_number as return_value',
'from inv_items',
'order by item_number'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:-sFFFrpygDwqRmblX5eXSra_3f_-oqy_VDXqTyTOWlc'
,p_created_on=>wwv_flow_imp.dz('20260518065647Z')
,p_updated_on=>wwv_flow_imp.dz('20260518065647Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_org_code
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1275275811707285609)
,p_lov_name=>'LOV_ORG_CODE'
,p_static_id=>'lov-org-code'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  org_name || '' ('' || org_code || '')'' as display_value,',
'  org_code as return_value',
'from inv_orgs',
'where active_flag = ''Y''',
'order by org_name;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>'SH256:c3HjZErMS38NON2C9mtpH31zZdlGQNVbELHVSQfdcqg'
,p_created_on=>wwv_flow_imp.dz('20260518065507Z')
,p_updated_on=>wwv_flow_imp.dz('20260518065507Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1273932587594904813)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(1273927372932904801)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121246Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1390966287338191460)
,p_short_name=>'Chat Assistant'
,p_static_id=>'chat-assistant'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260518121246Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121246Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1382897952549676733)
,p_short_name=>'Demand at Risk'
,p_static_id=>'demand-at-risk'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20260518114446Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114446Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1273927590948904801)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1301309289303821835)
,p_short_name=>'Item Demand Details'
,p_static_id=>'item-demand-details'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260518082429Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082429Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1321699406296238405)
,p_short_name=>'Item Supply Details'
,p_static_id=>'item-supply-details'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260518093355Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093355Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1280455399072995569)
,p_short_name=>'Items in Shortage'
,p_static_id=>'items-in-shortage'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260518070434Z')
,p_updated_on=>wwv_flow_imp.dz('20260518070434Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1375762115197956084)
,p_short_name=>'Replenishment Options'
,p_static_id=>'replenishment-options'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260518113332Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113332Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1289684242310208986)
,p_short_name=>'WO Material Availability'
,p_static_id=>'wo-material-availability'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260518074008Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074008Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1273928278366904803)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1273926647723904800)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(1273926998621904800)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Inventory Shortage Assistant'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1273940114452904823)
,p_plug_name=>'Inventory Shortage Assistant'
,p_static_id=>'inventory-shortage-assistant'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Items in Shortage'
,p_alias=>'ITEMS-IN-SHORTAGE'
,p_step_title=>'Items in Shortage'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518070434Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518071822Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1280454708491995567)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518070434Z')
,p_updated_on=>wwv_flow_imp.dz('20260518070434Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1280459903844995859)
,p_plug_name=>'Items in Shortage'
,p_static_id=>'items-in-shortage'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  org_code,',
'  material as item,',
'  openquantity as opendemand,',
'  availabletotransact,',
'  expectedsupplies,',
'  (openquantity - (availabletotransact + expectedsupplies)) as shortage',
'from v_material_assignment_summaries',
'where 1=1 --org_code =NVL(:P1_ORG_CODE, ''NCO'')',
'and (openquantity - (availabletotransact + expectedsupplies)) > 0',
'order by shortage desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1_ORG_CODE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>true
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071822Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1280460044087995859)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'AI Search'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1280460044087995859
,p_ai_search_mode=>'A'
,p_ai_report_hint=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This report shows items in shortage for inventory organizations.',
'Columns:',
'- Item: item number',
'- OpenDemand: total demand quantity',
'- AvailableToTransact: available stock',
'- ExpectedSupplies: incoming supply',
'- Shortage: OpenDemand minus (AvailableToTransact + ExpectedSupplies)',
'',
'User can search for items based on shortage, availability, demand, or supply.'))
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071822Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280462401588995869)
,p_db_column_name=>'AVAILABLETOTRANSACT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Availabletotransact'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280462864810995870)
,p_db_column_name=>'EXPECTEDSUPPLIES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Expectedsupplies'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280461632823995866)
,p_db_column_name=>'ITEM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280462099130995867)
,p_db_column_name=>'OPENDEMAND'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Opendemand'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280461233992995863)
,p_db_column_name=>'ORG_CODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Org Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1280463273617995871)
,p_db_column_name=>'SHORTAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Shortage'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518070437Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071133Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1278788569958345255)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_CODE:ITEM:OPENDEMAND:AVAILABLETOTRANSACT:EXPECTEDSUPPLIES:SHORTAGE'
,p_created_on=>wwv_flow_imp.dz('20260518070504Z')
,p_updated_on=>wwv_flow_imp.dz('20260518070504Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1278882546067353201)
,p_name=>'P1_ORG_CODE'
,p_item_sequence=>10
,p_prompt=>'Org Code'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ORG_CODE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_imp.id(1273926647723904800)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518070748Z')
,p_updated_on=>wwv_flow_imp.dz('20260518071044Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Item Demand Details'
,p_alias=>'ITEM-DEMAND-DETAILS'
,p_step_title=>'Item Demand Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518082429Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518082443Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1301308514177821833)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518082429Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082429Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1301310137493821959)
,p_plug_name=>'Item Demand Details'
,p_static_id=>'item-demand-details'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  d.document_type,',
'  d.document_no,',
'  d.demand_status,',
'  d.req_qty,',
'  d.req_date',
'from inv_demand d',
'join inv_orgs o on o.org_id = d.org_id',
'join inv_items i on i.item_id = d.item_id',
'where 1=1 --o.org_code = :P3_ORG_CODE',
'--and i.item_number = :P3_ITEM_NUMBER',
'order by d.req_date, d.document_type'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082443Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1301310228369821959)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1301310228369821959
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082443Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1301312348936821967)
,p_db_column_name=>'DEMAND_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Demand Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082431Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1301311955811821966)
,p_db_column_name=>'DOCUMENT_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082431Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1301311488399821964)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082431Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1301313137434821970)
,p_db_column_name=>'REQ_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Req Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082431Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1301312764841821969)
,p_db_column_name=>'REQ_QTY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Req Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518082431Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082431Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1301340160235823239)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENT_TYPE:DOCUMENT_NO:DEMAND_STATUS:REQ_QTY:REQ_DATE'
,p_created_on=>wwv_flow_imp.dz('20260518082443Z')
,p_updated_on=>wwv_flow_imp.dz('20260518082443Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Replenishment Options'
,p_alias=>'REPLENISHMENT-OPTIONS'
,p_step_title=>'Replenishment Options'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518113332Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1375761598889956083)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518113332Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113332Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1278882656705353202)
,p_plug_name=>'Other org availability'
,p_static_id=>'other-org-availability'
,p_title=>'Other org availability'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  o.org_code,',
'  sum(q.avail_to_transact) as available_to_transact',
'from inv_item_quantity q',
'join inv_orgs o on o.org_id = q.org_id',
'join inv_items i on i.item_id = q.item_id',
'where 1=1--i.item_number = :P5_ITEM_NUMBER',
'--and o.org_code <> :P5_ORG_CODE',
'group by o.org_code',
'order by available_to_transact desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other org availability'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1278882742846353203)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1375763739916956215
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1278883428788353210)
,p_db_column_name=>'AVAILABLE_TO_TRANSACT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Available To Transact'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113956Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1278883369030353209)
,p_db_column_name=>'ORG_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Org Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113956Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1381856987713650160)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_CODE:AVAILABLE_TO_TRANSACT'
,p_created_on=>wwv_flow_imp.dz('20260518114020Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1278883500263353211)
,p_plug_name=>'Other org Substitute item availabilityavailability'
,p_static_id=>'other-org-substitute-item-availabilityavailability'
,p_title=>'Substitute item availability'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  si.item_number as substitute_item,',
'  sum(q.avail_to_transact) as available_to_transact',
'from inv_item_substitutes s',
'join inv_items base',
'  on base.item_id = s.item_id',
'join inv_items si',
'  on si.item_id = s.substitute_item_id',
'join inv_item_quantity q',
'  on q.item_id = si.item_id',
'join inv_orgs o',
'  on o.org_id = q.org_id',
'where 1=1--base.item_number = :P5_ITEM_NUMBER',
' -- and o.org_code = :P5_ORG_CODE',
'group by si.item_number',
'order by available_to_transact desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Substitute item availability'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1278883697326353212)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1375763739916956215
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1278883899515353214)
,p_db_column_name=>'AVAILABLE_TO_TRANSACT'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Available To Transact'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113956Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1278883998903353215)
,p_db_column_name=>'SUBSTITUTE_ITEM'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Substitute Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113956Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113956Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1381857416126650170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AVAILABLE_TO_TRANSACT:SUBSTITUTE_ITEM'
,p_created_on=>wwv_flow_imp.dz('20260518114020Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1375763642201956215)
,p_plug_name=>'Item quantity'
,p_static_id=>'replenishment-options'
,p_title=>'Item quantity'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  q.subinventory,',
'  q.locator,',
'  q.onhand_qty,',
'  q.avail_to_transact,',
'  q.avail_to_reserve',
'from inv_item_quantity q',
'join inv_orgs o on o.org_id = q.org_id',
'join inv_items i on i.item_id = q.item_id',
'where 1=1--o.org_code = :P5_ORG_CODE',
'--  and i.item_number = :P5_ITEM_NUMBER',
'order by q.subinventory, q.locator;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Item quantity'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1375763739916956215)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1375763739916956215
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1375766540879956226)
,p_db_column_name=>'AVAIL_TO_RESERVE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Avail To Reserve'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113333Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1375766100641956225)
,p_db_column_name=>'AVAIL_TO_TRANSACT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Avail To Transact'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113333Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1375765314317956222)
,p_db_column_name=>'LOCATOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Locator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113333Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1375765766228956224)
,p_db_column_name=>'ONHAND_QTY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Onhand Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113333Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1375764981188956220)
,p_db_column_name=>'SUBINVENTORY'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Subinventory'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518113333Z')
,p_updated_on=>wwv_flow_imp.dz('20260518113333Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1381856421327650150)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUBINVENTORY:LOCATOR:ONHAND_QTY:AVAIL_TO_TRANSACT:AVAIL_TO_RESERVE'
,p_created_on=>wwv_flow_imp.dz('20260518114020Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114020Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'WO Material Availability'
,p_alias=>'WO-MATERIAL-AVAILABILITY'
,p_step_title=>'WO Material Availability'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518074008Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1289683659501208984)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518074008Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074008Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1289891915991209345)
,p_plug_name=>'WO Material Availability'
,p_static_id=>'wo-material-availability'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  i.item_number as itemnumber,',
'  w.wo_number as workordernumber,',
'  w.planned_completion_date as plannedcompletiondate,',
'  case m.material_available_status',
'    when ''ORA_P'' then ''Partial''',
'    when ''ORA_N'' then ''NO''',
'    else m.material_available_status',
'  end as materialavailablestatus',
'from mfg_work_orders w',
'join inv_orgs o on o.org_id = w.org_id',
'join mfg_wo_material_avail m on m.wo_id = w.wo_id',
'join inv_items i on i.item_id = m.component_item_id',
'where 1=1 --o.org_code = :P2_ORG_CODE',
'and m.material_available_status in (''ORA_P'',''ORA_N'')',
'order by w.planned_completion_date, w.wo_number'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1289892076650209345)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1289892076650209345
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1289895615508209350)
,p_db_column_name=>'ITEMNUMBER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Itemnumber'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1289899933893209356)
,p_db_column_name=>'MATERIALAVAILABLESTATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Materialavailablestatus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1289898814330209354)
,p_db_column_name=>'PLANNEDCOMPLETIONDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Plannedcompletiondate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1289897535293209353)
,p_db_column_name=>'WORKORDERNUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workordernumber'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518074012Z')
,p_updated_on=>wwv_flow_imp.dz('20260518074012Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Demand at Risk'
,p_alias=>'DEMAND-AT-RISK'
,p_step_title=>'Demand at Risk'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518114446Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1382897371732676731)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518114446Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114446Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1382904345285677015)
,p_plug_name=>'Demand at Risk'
,p_static_id=>'demand-at-risk'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  o.org_code,',
'  i.item_number,',
'  d.document_type,',
'  d.document_no,',
'  d.req_qty,',
'  d.req_date,',
'  oi.planning_lead_time_days as required_lead_time,',
'  greatest(0, trunc(d.req_date) - trunc(sysdate)) as available_lead_time,',
'  (oi.planning_lead_time_days - greatest(0, trunc(d.req_date) - trunc(sysdate))) as days_late',
'from inv_demand d',
'join inv_orgs o on o.org_id = d.org_id',
'join inv_items i on i.item_id = d.item_id',
'join inv_org_items oi on oi.org_id = d.org_id and oi.item_id = d.item_id',
'where d.demand_status = ''OPEN''',
'--and o.org_code = :P6_ORG_CODE',
'and (oi.planning_lead_time_days - greatest(0, trunc(d.req_date) - trunc(sysdate))) > 0',
'order by days_late desc, d.req_date'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1382904419904677015)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1382904419904677015
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382908409938677036)
,p_db_column_name=>'AVAILABLE_LEAD_TIME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Available Lead Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382908847735677037)
,p_db_column_name=>'DAYS_LATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Days Late'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382906881652677029)
,p_db_column_name=>'DOCUMENT_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Document No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382906474965677027)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382906002418677025)
,p_db_column_name=>'ITEM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382905693439677021)
,p_db_column_name=>'ORG_CODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Org Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382908038343677035)
,p_db_column_name=>'REQUIRED_LEAD_TIME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Required Lead Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382907601688677033)
,p_db_column_name=>'REQ_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Req Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1382907294444677032)
,p_db_column_name=>'REQ_QTY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Req Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518114449Z')
,p_updated_on=>wwv_flow_imp.dz('20260518114449Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Item Supply Details'
,p_alias=>'ITEM-SUPPLY-DETAILS'
,p_step_title=>'Item Supply Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260518093355Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1321698862696238404)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518093355Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093355Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1321699836635238531)
,p_plug_name=>'Item Supply Details'
,p_static_id=>'item-supply-details'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  s.document_type,',
'  s.document_no,',
'  s.supply_status,',
'  s.supply_qty,',
'  s.due_date',
'from inv_supply s',
'join inv_orgs o on o.org_id = s.org_id',
'join inv_items i on i.item_id = s.item_id',
'where 1=1 --o.org_code = :P4_ORG_CODE',
'--and i.item_number = :P4_ITEM_NUMBER',
'order by s.due_date, s.document_type'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1321699940294238531)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1321699940294238531
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1321701561539238538)
,p_db_column_name=>'DOCUMENT_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1321701153832238535)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1321702748429238542)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1321702307792238540)
,p_db_column_name=>'SUPPLY_QTY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Supply Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1321701953415238539)
,p_db_column_name=>'SUPPLY_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Supply Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260518093356Z')
,p_updated_on=>wwv_flow_imp.dz('20260518093356Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Chat Assistant'
,p_alias=>'CHAT-ASSISTANT'
,p_step_title=>'Chat Assistant'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260518121246Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518121609Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1390965651184191459)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(1273927372932904801)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260518121246Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121246Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1278884006275353216)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518121522Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121522Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1278884199773353217)
,p_button_sequence=>10
,p_button_name=>'New'
,p_static_id=>'new'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260518121522Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121609Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1278884271011353218)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1278884199773353217)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260518121522Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121609Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1278884334518353219)
,p_event_id=>wwv_flow_imp.id(1278884271011353218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-open-ai-assistant'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'DIALOG')).to_clob
,p_ai_agent_id=>wwv_flow_imp.id(1384297234622046362)
,p_created_on=>wwv_flow_imp.dz('20260518121522Z')
,p_updated_on=>wwv_flow_imp.dz('20260518121609Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Inventory Shortage Assistant - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_last_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1273933169646904815)
,p_plug_name=>'Inventory Shortage Assistant'
,p_static_id=>'inventory-shortage-assistant'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1273934706553904817)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1273933169646904815)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1273934034203904816)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1273933169646904815)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1273934408521904817)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1273933169646904815)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1273933636961904816)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1273933169646904815)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1273938824052904821)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1273938824052904821
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1273938470582904820)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1273938470582904820
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1273935110259904818)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1273935110259904818
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1273936146049904819)
,p_page_process_id=>wwv_flow_imp.id(1273935110259904818)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1273936632551904819)
,p_page_process_id=>wwv_flow_imp.id(1273935110259904818)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1273935639820904818)
,p_page_process_id=>wwv_flow_imp.id(1273935110259904818)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1273937006370904819)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1273937006370904819
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1273938028317904820)
,p_page_process_id=>wwv_flow_imp.id(1273937006370904819)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1273937590473904820)
,p_page_process_id=>wwv_flow_imp.id(1273937006370904819)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260518064927Z')
,p_updated_on=>wwv_flow_imp.dz('20260518064927Z')
,p_created_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
,p_updated_by=>'TUSHAR.DHANUKA@GDS.EY.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
