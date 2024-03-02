<script>
  let menu = false;

  function toggleMenu() {
    menu = !menu;
  }
</script>

<header class="h-20 border-b-2 px-4">
  <div class="h-full flex justify-between items-center container mx-auto">
    <a href="/">
      <div class="flex gap-4 items-center">
        <img src="/favicon.png" class="h-12 w-12" alt="" />
        <h1 class="font-bold text-2xl md:text-3xl">The Loki Project</h1>
      </div>
    </a>
    <div>
      <nav class="block md:hidden">
        <button on:click={toggleMenu}>
          <span class="material-symbols-outlined font-md text-3xl"> menu </span>
        </button>
      </nav>
      {#if menu}
        <nav class="block md:hidden">
          <div
            class="fixed inset-0 bg-black bg-opacity-50 z-50"
            class:show={menu}
          ></div>
          <div
            class="fixed top-0 right-0 h-full w-64 bg-white z-50 shadow-lg"
            class:show={menu}
          >
            <div class="flex justify-end p-4">
              <button on:click={toggleMenu}>
                <span class="material-symbols-outlined font-md text-3xl">
                  close
                </span>
              </button>
            </div>
            <div class="flex flex-col gap-4 p-4">
              <a
                href="/courses"
                class="text-xl font-medium flex items-center gap-4"
              >
                <span class="material-symbols-outlined flex items-center gap-4">
                  map
                </span>All Courses
              </a>
              <a
                href="/about"
                class="text-xl font-medium flex items-center gap-4"
              >
                <span class="material-symbols-outlined"> info </span>About
              </a>
              <a
                href="/donate"
                class="text-xl font-medium flex items-center gap-4"
              >
                <span class="material-symbols-outlined">
                  card_membership
                </span>Donate
              </a>
              <a href="/login ">
                <p
                  class="px-4 py-2 border-2 rounded-md font-bold border-red-600 text-white bg-red-600 shrink-0 flex justify-center items-center"
                >
                  sign in
                </p>
              </a>
            </div>
          </div>
        </nav>
      {/if}
      <nav class="hidden md:flex gap-12 text-xl font-medium items-center">
        <a href="/courses">
          <p>All Courses</p>
        </a>
        <p>About</p>
        <p>Donate</p>
        <a href="/login">
          <p
            class="px-4 py-2 border-2 rounded-md border-red-600 text-white bg-red-600 shrink-0"
          >
            sign in
          </p>
        </a>
      </nav>
    </div>
  </div>
</header>
