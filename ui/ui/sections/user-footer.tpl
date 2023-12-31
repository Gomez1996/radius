        </section>
        </div>
        {if isset($_c['CompanyFooter'])}
            <footer class="main-footer">
                {$_c['CompanyFooter']}
                <div class="pull-right">
                    <a href="javascript:showPrivacy()">Privacy</a>
                    &bull;
                    <a href="javascript:showTaC()">T &amp; C</a>
                </div>
            </footer>
        {else}
            <footer class="main-footer">
                Billing Software by <a href="https://freeispradius.com" rel="nofollow noreferrer noopener"
                    target="_blank">FreeIspRadius</a>, Theme by <a href="https://adminlte.io/" rel="nofollow noreferrer noopener"
                    target="_blank">AdminLTE</a>
                <div class="pull-right">
                    <a href="javascript:showPrivacy()">Privacy</a>
                    &bull;
                    <a href="javascript:showTaC()">T &amp; C</a>
                </div>
            </footer>
        {/if}
        </div>


        <!-- Modal -->
        <div class="modal fade" id="HTMLModal" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body" id="HTMLModal_konten"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">&times;</button>
                    </div>
                </div>
            </div>
        </div>



        <script src="ui/ui/scripts/jquery.min.js"></script>
        <script src="ui/ui/scripts/bootstrap.min.js"></script>
        <script src="ui/ui/scripts/adminlte.min.js"></script>

        <script src="ui/ui/scripts/plugins/select2.min.js"></script>
        <script src="ui/ui/scripts/custom.js?v=2"></script>

        {if isset($xfooter)}
            {$xfooter}
        {/if}

        {if $_c['tawkto'] != ''}
            <!--Start of Tawk.to Script-->
            <script type="text/javascript">
                var Tawk_API = Tawk_API || {},
                    Tawk_LoadStart = new Date();
                (function() {
                    var s1 = document.createElement("script"),
                        s0 = document.getElementsByTagName("script")[0];
                    s1.async = true;
                    s1.src='https://embed.tawk.to/{$_c['tawkto']}';
                    s1.charset = 'UTF-8';
                    s1.setAttribute('crossorigin', '*');
                    s0.parentNode.insertBefore(s1, s0);
                })();
            </script>
            <!--End of Tawk.to Script-->
        {/if}

        {literal}
            <script>
                var listAtts = document.querySelectorAll(`[api-get-text]`);
                listAtts.forEach(function(el) {
                    $.get(el.getAttribute('api-get-text'), function(data) {
                        el.innerHTML = data;
                    });
                });
            </script>
        {/literal}

        </body>

</html>