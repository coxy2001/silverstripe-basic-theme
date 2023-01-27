<nav class="nav">
    <% loop Menu(1) %>
        <div class="nav__item">
            <a class="nav__link <% if Children %>nav__link--has-children<% end_if %> <% if $isCurrent %>nav__link--current<% end_if %>" href="$Link" title="$Title.XML">
                $MenuTitle.XML
            </a>
            <% if Children %>
                <div class="nav__children">
                    <% loop Children %>
                        <a class="nav__link nav__link--child <% if $isCurrent %>nav__link--current<% end_if %>" href="$Link" title="$Title.XML">
                            $MenuTitle.XML
                        </a>
                    <% end_loop %>
                </div>
            <% end_if %>
        </div>
    <% end_loop %>
</div>