{*<!--
/*********************************************************************************
  ** The contents of this file are subject to the vtiger CRM Public License Version 1.0
   * ("License"); You may not use this file except in compliance with the License
   * The Original Code is:  vtiger CRM Open Source
   * The Initial Developer of the Original Code is vtiger.
   * Portions created by vtiger are Copyright (C) vtiger.
   * All Rights Reserved.
 ********************************************************************************/
-->*}
{literal}
<style>
.showTable{
	display:inline-table;
}
.hideTable{
	display:none;
}
</style>
{/literal}
<script type="text/javascript" src="include/js/smoothscroll.js"></script>
<script type="text/javascript" src="modules/Settings/profilePrivileges.js"></script>
<br>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
	<tbody>
		<tr>
			<td valign="top" width="100%">
				<div align=center>
					<br>
							{include file='SetMenu.tpl'}
							<!-- DISPLAY Edit Profile-->
								<form action="index.php" method="post" name="profileform" id="form" onsubmit="VtigerJS_DialogBox.block();">
									<input type="hidden" name="module" value="Users">
									<input type="hidden" name="parenttab" value="Settings">
									<input type="hidden" name="action" value="{$ACTION}">
									<input type="hidden" name="mode" value="{$MODE}">
									<input type="hidden" name="profileid" value="{$PROFILEID}">
									<input type="hidden" name="profile_name" value="{$PROFILE_NAME}">
									<input type="hidden" name="profile_description" value="{$PROFILE_DESCRIPTION}">
									<input type="hidden" name="parent_profile" value="{$PARENTPROFILEID}">
									<input type="hidden" name="radio_button" value="{$RADIOBUTTON}">
									<input type="hidden" name="return_action" value="{$RETURN_ACTION}">

									<!-- Header -->
									<table class="slds-table slds-no-row-hover slds-table--cell-buffer slds-table-moz" style="background-color: #f7f9fb;">
										<tr class="slds-text-title--caps">
											<td style="padding: 0;">
												<div class="slds-page-header s1FixedFullWidth s1FixedTop forceHighlightsStencilSettings" style="height: 70px;">
													<div class="slds-grid primaryFieldRow" style="transform: translate3d(0, -8.65823px, 0);">
														<div class="slds-grid slds-col slds-has-flexi-truncate slds-media--center">
															<div class="slds-media slds-no-space" style="transform: scale3d(0.864715, 0.864715, 1) translate3d(4.32911px, 2.16456px, 0);">
																<div class="slds-media__figure slds-icon forceEntityIcon">
																	<span class="photoContainer forceSocialPhoto">
																		<div class="small roundedSquare forceEntityIcon">
																			<span class="uiImage">
																				<img src="{'ico-profile.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_PROFILES}" title="{$MOD.LBL_PROFILES}">
																			</span>
																		</div>
																	</span>
																</div>
															</div>
															<div class="slds-media__body">
																<h1 class="slds-page-header__title slds-m-right--small slds-truncate slds-align-middle">
																	<span class="uiOutputText">
																		<b><a href="index.php?module=Settings&action=index&parenttab=Settings">{'LBL_SETTINGS'|@getTranslatedString}</a> > <a href="index.php?module=Settings&action=ListProfiles&parenttab=Settings">{$CMOD.LBL_PROFILE_PRIVILEGES}</a> &gt; {$CMOD.LBL_VIEWING} &quot;{$PROFILE_NAME}&quot;</b>
																	</span>
																	<span class="small">{$CMOD.LBL_PROFILE_MESG} &quot;{$PROFILE_NAME}&quot;</span>
																</h1>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>

									<!-- Privileges table -->
									<table class="small" border="0" cellpadding="5" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td>

													<!-- Module name heading -->
													<div class="forceRelatedListSingleContainer">
														<article class="slds-card forceRelatedListCardDesktop" aria-describedby="header">
															<div class="slds-card__header slds-grid">
																<header class="slds-media slds-media--center slds-has-flexi-truncate">
																	<div class="slds-media__figure">
																		<div class="extraSmall forceEntityIcon">
																			<span class="uiImage subheader-image">
																				<img src="{'prvPrfHdrArrow.gif'|@vtiger_imageurl:$THEME}" >
																			</span>
																		</div>
																	</div>
																	<div class="slds-media__body">
																		<h2>
																			<span class="slds-text-title--caps slds-truncate actionLabel prvPrfBigText">
																				<b> {if $MODE eq 'create'}{$CMOD.LBL_STEP_2_2} : {/if}{$CMOD.LBL_DEFINE_PRIV_FOR} &lt;{$PROFILE_NAME}&gt; </b>
																			</span>
																		</h2>
																	</div>
																</header>
																<div class="slds-no-flex">
																	<div class="actionsContainer">
																		{if $ACTION eq 'SaveProfile'}
																			<input type="submit" value=" {$CMOD.LBL_FINISH_BUTTON} " name="save" class="slds-button slds-button--small slds-button_success" title="{$CMOD.LBL_FINISH_BUTTON}"/>&nbsp;&nbsp;
																		{else}
																			<input type="submit" value=" {$APP.LBL_SAVE_BUTTON_LABEL} " name="save" class="slds-button slds-button--small slds-button_success" title="{$APP.LBL_SAVE_BUTTON_LABEL}"/>&nbsp;&nbsp;
																		{/if}
																			<input type="button" value=" {$APP.LBL_CANCEL_BUTTON_LABEL} " name="Cancel" class="slds-button slds-button--small slds-button--destructive" title="{$APP.LBL_CANCEL_BUTTON_LABEL}" onClick="window.history.back();" />
																	</div>
																</div>
															</div>
																<div class="slds-card__body slds-card__body--inner">
																	<div class="commentData">
																		<font class="small">{$CMOD.LBL_USE_OPTION_TO_SET_PRIV}</font>
																	</div>
																</div>
														</article>
													</div>

													<!-- privilege lists -->
													<div class="slds-truncate">
														<table border="0" cellpadding="5" cellspacing="0" width="100%">
															<tbody>
																<tr>
																	<td>

																		<div class="slds-table--scoped">
																			<ul class="slds-tabs--scoped__nav" role="tablist" style="margin-bottom: 0;">
																				<li class="slds-tabs--scoped__item active" role="presentation">
																					<a class="slds-tabs--scoped__link " role="tab" tabindex="0" aria-selected="true" aria-controls="globalPrivileges" id="globalPrivileges" style="cursor: default;">
																						{$CMOD.LBL_SUPER_USER_PRIV}
																					</a>
																				</li>
																			</ul>

																			<div id="globalPrivileges" role="tabpanel" aria-labelledby="globalPrivileges" class="slds-tabs--scoped__content slds-truncate">
																				<table class="slds-table slds-no-row-hover detailview_table">
																					<tbody>
																						<tr id="gva">
																							<td class="dvtCellLabel" width="10%" valign="top">{$GLOBAL_PRIV.0}</td>
																							<td class="dvtCellInfo">
																								<b>{$CMOD.LBL_VIEW_ALL}</b> 
																								<br/>
																								{$CMOD.LBL_ALLOW} "{$PROFILE_NAME}" {$CMOD.LBL_MESG_VIEW}
																							</td>
																						</tr>
																						<tr>
																							<td class="dvtCellLabel" width="15%" valign="top">{$GLOBAL_PRIV.1}</td>
																							<td class="dvtCellInfo">
																								<b>{$CMOD.LBL_EDIT_ALL}</b>
																								<br>
																								{$CMOD.LBL_ALLOW} "{$PROFILE_NAME}" {$CMOD.LBL_MESG_EDIT}
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</div>

																		<br/>

																		<div class="slds-table--scoped">
																			<ul class="slds-tabs--scoped__nav" role="tablist" style="margin-bottom: 0;">
																				<li class="slds-tabs--scoped__item active" role="presentation">
																					<a class="slds-tabs--scoped__link " role="tab" tabindex="0" aria-selected="true" aria-controls="eachModulePrivilege" id="eachModulePrivilege" style="cursor: default;">
																						{$CMOD.LBL_SET_PRIV_FOR_EACH_MODULE}
																					</a>
																				</li>
																			</ul>

																			<div id="eachModulePrivilege" role="tabpanel" aria-labelledby="eachModulePrivilege" class="slds-tabs--scoped__content slds-truncate">
																				<table class="slds-table slds-no-row-hover detailview_table privilege-table">
																					<tr id="gva">
																						<td colspan="7" class="dvtCellLabel text-left">
																							<strong>{$CMOD.LBL_EDIT_PERMISSIONS}</strong>
																						</td>
																					</tr>
																					<tr id="gva" class="slds-text-title--caps">
																						<td colspan="2" class="small dvtCellInfo"> {$CMOD.LBL_TAB_MESG_OPTION} </td>
																						<td class="small dvtCellInfo" align="center">{$CMOD.LBL_CREATE}</div></td>
																						<td class="small dvtCellInfo" align="center">{$CMOD.Edit}</div></td>
																						<td class="small dvtCellInfo" align="center">{$CMOD.LBL_VIEW}</div></td>
																						<td class="small dvtCellInfo" align="center">{$CMOD.LBL_DELETE}</div></td>
																						<td class="small dvtCellInfo" nowrap="nowrap">{$CMOD.LBL_FIELDS_AND_TOOLS_SETTINGS}</td>
																					</tr>

																					<!-- module loops-->
																					{foreach key=tabid item=elements from=$TAB_PRIV}
																						<tr id="module-loops">
																							{assign var=modulename value=$TAB_PRIV[$tabid][0]}
																							{assign var="MODULELABEL" value=$modulename|@getTranslatedString:$modulename}
																							<td class="small dvtCellLabel text-center" width="3%">
																								<div>{$TAB_PRIV[$tabid][1]}</div>
																							</td>
																							<td class="small dvtCellLabel text-left" width="40%"><p>{$MODULELABEL}</p></td>
																							<td class="small dvtCellInfo" width="10%">
																								<div align="center">{if !empty($STANDARD_PRIV[$tabid][4])}{$STANDARD_PRIV[$tabid][4]}{/if}</div>
																							</td>
																							<td class="small dvtCellInfo" width="10%">
																								<div align="center">{if !empty($STANDARD_PRIV[$tabid][1])}{$STANDARD_PRIV[$tabid][1]}{/if}</div>
																							</td>
																							<td class="small dvtCellInfo" width="10%">
																								<div align="center">{if !empty($STANDARD_PRIV[$tabid][3])}{$STANDARD_PRIV[$tabid][3]}{/if}</div>
																							</td>
																							<td class="small dvtCellInfo" width="10%">
																								<div align="center">{if !empty($STANDARD_PRIV[$tabid][2])}{$STANDARD_PRIV[$tabid][2]}{/if}</div>
																							</td>
																							<td class="small dvtCellInfo" width="17%">
																								<div align="center">
																								{if !empty($FIELD_PRIVILEGES[$tabid])}
																									<img src="{'showDown.gif'|@vtiger_imageurl:$THEME}" id="img_{$tabid}" alt="{$APP.LBL_EXPAND_COLLAPSE}" title="{$APP.LBL_EXPAND_COLLAPSE}" onclick="fnToggleVIew('{$tabid}_view')" style="display:block; height: 20px;">
																								{/if}
																								</div>
																							</td>
																						</tr>
																						<tr class="hideTable" id="{$tabid}_view" className="hideTable">
																							<td colspan="7" class="small settingsSelectedUI">

																								<!-- Edit Permissions Table -->
																								<table class="slds-table slds-no-row-hover detailview_table">
																									<tbody>

																										<!-- Fields to be shown Section-->
																										{if !empty($FIELD_PRIVILEGES[$tabid])}
																											<tr class="slds-line-height--reset">
																												<td class="small dvtCellLabel text-left" colspan="7" valign="top">
																													<b>{if $modulename eq 'Calendar'}
																														{$CMOD.LBL_FIELDS_TO_BE_SHOWN} ({$APP.Tasks})
																													{else}
																														{$CMOD.LBL_FIELDS_TO_BE_SHOWN}
																													{/if}</b>
																												</td>
																											</tr>
																											{foreach item=row_values from=$FIELD_PRIVILEGES[$tabid]}
																												<tr class="slds-line-height--reset">
																													{foreach item=element from=$row_values}
																														<td valign="top" align="right" class="dvtCellInfo toggle-access">{$element.2}{$element.1}</td>
																														<td class="dvtCellLabel text-left">{$element.0}</td>
																													{/foreach}
																												</tr>
																											{/foreach}
																										{/if}

																										<!-- Fields to be shown Section for Calendar Module -->
																										{if $modulename eq 'Calendar'}
																											<tr class="slds-line-height--reset">
																												<td class="small dvtCellLabel text-left" colspan="7" valign="top">{$CMOD.LBL_FIELDS_TO_BE_SHOWN} ({$APP.Events})</td>
																											</tr>
																											{foreach item=row_values from=$FIELD_PRIVILEGES[16]}
																												<tr class="slds-line-height--reset">
																													{foreach item=element from=$row_values}
																														<td class="dvtCellInfo" align="right" valign="top">{$element.2}{$element.1}</td>
																														<td class="dvtCellLabel text-left">{$element.0}</td>
																													{/foreach}
																												</tr>
																											{/foreach}
																										{/if}

																										<!-- Tools to be shown Section -->
																										{if !empty($UTILITIES_PRIV[$tabid])}
																											<tr class="slds-line-height--reset">
																												<td colspan="7" class="small dvtCellLabel text-left" valign="top"><b>{$CMOD.LBL_TOOLS_TO_BE_SHOWN}</b></td>
																											</tr>
																											{foreach item=util_value from=$UTILITIES_PRIV[$tabid]}
																												<tr class="slds-line-height--reset">
																													{foreach item=util_elements from=$util_value}
																														<td valign="top" align="right" class="dvtCellInfo">{$util_elements.1}</td>
																														<td class="dvtCellLabel text-left">{$APP[$util_elements.0]}</td>
																													{/foreach}
																												</tr>
																											{/foreach}
																										{/if}

																									</tbody>
																								</table>
																							</td>
																						</tr>
																					{/foreach}

																				</table>

																				<table class="slds-table slds-no-row-hover">
																					<tr class="slds-line-height--reset">
																						<td class="dvtCellLabel text-left"><font color="red" size=5>*</font>{$CMOD.LBL_MANDATORY_MSG}</td>
																					</tr>
																					<tr class="slds-line-height--reset">
																						<td class="dvtCellLabel text-left" align="left"><font color="blue" size=5>*</font>{$CMOD.LBL_DISABLE_FIELD_MSG}</td>
																					</tr>
																				</table>

																			</div>
																		</div>


																	</td>
																</tr>
															</tbody>
														</table>
													</div>

												</td>
											</tr>
										</tbody>
									</table>

									<!-- wizard buttons -->
									<table class="slds-table slds-no-row-hover">
										<tbody>
											<tr class="slds-line-height--reset">
												<td align="right">
													{if $ACTION eq 'SaveProfile'}
														<input type="submit" value=" {$CMOD.LBL_FINISH_BUTTON} " name="save" class="slds-button slds-button--small slds-button_success" title="{$CMOD.LBL_FINISH_BUTTON}"/>&nbsp;&nbsp;
													{else}
														<input type="submit" value=" {$APP.LBL_SAVE_BUTTON_LABEL} " name="save" class="slds-button slds-button--small slds-button_success" title="{$APP.LBL_SAVE_BUTTON_LABEL}" />&nbsp;&nbsp;
													{/if}
													<input type="button" value=" {$APP.LBL_CANCEL_BUTTON_LABEL} " name="Cancel" class="slds-button--destructive slds-button slds-button--small" onClick="window.history.back();" title="{$APP.LBL_CANCEL_BUTTON_LABEL}" />
												</td>
											</tr>
										</tbody>
									</table>

									<table border="0" cellpadding="5" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td class="small" align="right" nowrap="nowrap"><a href="#top">{$MOD.LBL_SCROLL}</a></td>
											</tr>
										</tbody>
									</table>

								</form>
							<!-- End of Display -->
							</td>
							</tr>
							</table>
					</td>
					</tr>
					</table>
				</div>
			</td>
		</tr>
	</tbody>
</table>