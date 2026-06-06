import dIcon from "discourse/ui-kit/helpers/d-icon";

export default <template>
  {{#if @outletArgs.user.email}}
    {{dIcon "envelope"}}
    {{@outletArgs.user.email}}
  {{/if}}
</template>
