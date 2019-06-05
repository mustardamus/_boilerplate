<script>
	import Page from '../components/page.svelte'
</script>

<svelte:head>
	<title>Lets get started :)</title>
</svelte:head>

<Page hideSidebarLeftOnMobile={true} hideSidebarRightOnMobile={true}>
	<nav slot="sidebar-left">
		Left Sidebar
	</nav>

	<nav slot="sidebar-right">
		Right Sidebar
	</nav>

	<h1 class="title is-1">
		Let's get started :)
	</h1>
</Page>

<style></style>
