<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="bb-omnibar-collapsed">
<head>
    <script src="Scripts/jquery-1.7.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.8.20.min.js"></script>
    <link href="Content/GoogleChart.css" rel="stylesheet" />
</head>
<body id="BodyId" style="margin: 0px; padding: 0px; border: 0px">
    <div id="wrapOuter">
        <div id="wrapInner">

            <div class="internal bb-omnibar-height-padding" id="wrapBody">
                <p class="site-title">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/sitelogo.png" Width="50%" Height="70" />
                </p>
                <div class="blackbaudGreen nonprofResources" id="wrapBodyContent">
                    <div id="wrapContent">
                        <div id="wrapInternalContent">
                            <div id="wrapInternalNav">
                                <div id="internalNav">
                                    <!--START MENU-->
                                    <ul class="nav">
                                        <li class=" menuItem1 first parent"><a>Nonprofit Solutions</a>
                                        </li>
                                        <li class=" menuItem2 parent selected"><a href="http://www.blackbaud.com/nonprofit-resources">Resources</a> </li>
                                    </ul>
                                    <!--END MENU-->
                                </div>
                                <div id="internalLeftContent">
                                    <div class="leftColBtn" id="leftColChat">test1</div>
                                    <div class="leftColBtn" id="leftColInfo">tes2</div>
                                </div>
                            </div>
                            <div id="wrapInternalRight">
                            </div>
                        </div>
                    </div>
                    <div id="wrapContactBar">
                    </div>
                </div>
                <div id="wrapFooter">
                    <div class="footerCol" id="footerCol1">
                        <h1>Nonprofit Solutions</h1>
                    </div>
                    <div class="footerCol" id="footerCol2">
                        <h1>Resources</h1>
                    </div>
                    <div class="footerCol" id="footerCol3">
                        <h1>Support</h1>
                    </div>
                    <div class="footerCol" id="footerCol4">
                        <h1>Company</h1>
                    </div>

                </div>
                <div id="wrapCopyright">
                    <script src="//cdnjs.cloudflare.com/ajax/libs/easyXDM/2.4.17.1/easyXDM.min.js" type="text/javascript"></script>
                    <script src="//signin.blackbaud.com/omnibar.js" type="text/javascript"></script>
                    <div id="omnibar" style="display: block;">

                        <div data-bbauto-view="Omnibar" class="bb-omnibar noservices signedout servicelinksloaded">
                            <div data-bbauto-field="Desktop" class="desktop">
                                <div data-bbauto-field="bar" aria-haspopup="true" class="bar" style="z-index: 1000; height: 50px;">
                                    <div aria-haspopup="true" class="header bb-omnibar-button">
                                        <div data-bbauto-field="BlackbaudLogo" class="bblogo logo" style="display: block;"></div>
                                        <div data-bbauto-field="RENXTLogo" class="rexlogo logo"></div>
                                        <div data-bbauto-field="FENXTLogo" class="fexlogo logo"></div>
                                        <div data-bbauto-field="AltruLogo" class="altrulogo logo"></div>
                                        <div data-bbauto-field="ResearchPointLogo" class="researchpointlogo logo"></div>
                                        <div data-bbauto-field="ServiceNameLabel" class="servicename hideforcollapsed" style="display: block;"></div>
                                        <div class="flydownArrow hideforcollapsed"></div>
                                    </div>
                                    <div aria-haspopup="true" class="databasePicker bb-omnibar-button hidden hideforcollapsed">
                                        <div class="selectedText">
                                            <div data-bbauto-field="CurrentDatabaseLabel" class="currentDatabase"></div>
                                            <div data-bbauto-field="UnknownDatabaseLabel" style="display: none;" class="unknownDatabase">Switch to database...</div>
                                        </div>
                                        <div data-bbauto-field="MiniDatabasePickerButton" class="pickerIcon"></div>
                                        <div class="flydownArrow"></div>
                                    </div>
                                    <div class="search hideforcollapsed">
                                        <div class="searchContainer">
                                            <input type="text" data-bbauto-field="SearchBox" class="searchbox" id="omnibar_searchbox">
                                            <div class="searchButton">
                                                <div data-bbauto-field="SearchIcon" class="searchButtonIcon"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="signinheader hideforcollapsed">
                                        <a data-bbauto-field="SignIn" class="signin" href="https://signin.blackbaud.com/?RedirectUrl=https%3A%2F%2Fwww.blackbaud.com%2Fnonprofit-resources%2Fblackbaud-index&amp;ck=bbmigration">Sign in</a>
                                    </div>
                                    <div aria-haspopup="true" class="welcomeheader bb-omnibar-button hideforcollapsed">
                                        <div data-bbauto-field="WelcomeMessage" class="welcomemesage"></div>
                                        <div class="flydownArrow"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        var bb_menu = $('.bb_menu');

                        if (bb_menu.length) {
                            bb_menu.addClass('bb-omnibar-height-margin');
                        } else {
                            $('#wrapBody').addClass('bb-omnibar-height-padding');
                        }

                        BBAUTH.Omnibar.load(document.getElementById("omnibar"),
                        {
                            afterLoad: function () {
                                $("#omnibar .desktop .bar, #omnibar .desktop .accountflyout, #omnibar .desktop .serviceflyout").css("z-index", "1000");
                            },
                            signOutRedirectUrl: "https://" + document.domain + "/profile/logout.aspx",
                            signInRedirectUrl: document.location.href,
                            contentKey: "bbmigration"
                        });
                        if (document.getElementById('wrapMainNav') != null) { initMainNav(); }
                        if (document.getElementById('wrapSlideshow') != null) { initHomeSlides(); }
                        if (document.getElementById('wrapSlideshowNav') != null) { initHomeThumbs(); }
                    </script>
                    <!-- OmniBar includes -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
