defmodule FormattingTestWeb.TestLive do
  use FormattingTestWeb, :live_view

  def textarea(assigns) do
    assigns = assign(assigns, :extra_assigns, assigns_to_attributes(assigns, []))
    ~H"<textarea {@extra_assigns}><%= render_slot(@inner_block) %></textarea>"
  end

  def render(assigns) do
    ~H"""
    <div class="flex-1 flex flex-col overflow-hidden">
      <!-- Main content -->
      <div class="flex-1 flex items-stretch overflow-hidden">
        <main class="flex-1 overflow-y-auto p-4">
          <!-- Primary column -->
          <section
            aria-labelledby="primary-heading"
            class="min-w-0 flex-1 h-full flex flex-col lg:order-last"
          >
            <svg
              id="game"
              viewBox="0 0 1000 1000"
              width="1000"
              height="1000"
              class="bg-white dark:bg-zinc-900 shadow mx-auto w-full h-auto max-w-[calc(100vh-theme(space.40))] max-h-[calc(100vh-theme(space.40))] touch-pinch-zoom"
            >
              <defs>
                <pattern id="tenthGrid" width="10" height="10" patternUnits="userSpaceOnUse">
                  <path d="M 10 0 L 0 0 0 10" fill="none" stroke="silver" stroke-width="0.5" />
                </pattern>
                <.textarea
                  id="textarea"
                  class="hidden very-long-class-name foo-bar-baz"
                  phx-no-break
                  blablablablablablablasdkasdjioasjdlaksjdlaksjdlajsdl="foooooo"
                >My content</.textarea>
              </defs>
            </svg>
          </section>
        </main>
      </div>
    </div>
    """
  end
end
