import dIcon from "discourse/ui-kit/helpers/d-icon";

export default <template>
  {{#if @outletArgs.model.email}}
    {{dIcon "envelope"}}
    {{@outletArgs.model.email}}
  {{/if}}
</template>
