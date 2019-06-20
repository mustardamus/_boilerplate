<header>
	<TheTopNav />
</header>

<main>
	<slot></slot>
</main>

<footer>
	<TheFooter />
</footer>

<script>
	import TheTopNav from '../components/the-top-nav.svelte'
	import TheFooter from '../components/the-footer.svelte'
</script>

<style>/* styles defined in assets/scss/layout.scss */</style>
