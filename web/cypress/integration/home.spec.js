describe('Onde usar meu cartão VR', () => {
    it('Visualizar mapa do Google em Onde usar meu cartão VR', () => {
        cy.viewport(1440, 900)
        cy.visit('https://www.vr.com.br/')

        cy.get('a[href="/onde-aceita.htm"]').click()
        cy.get('h1[class="vr-hero__title"] strong').should('have.text', 'Mais liberdade de escolha para você. ')
        cy.get('div[class="vr-hero__actions"] [href="#rede-credenciada"]').click()

        cy.request({
            method: 'GET',
            url: 'https://maps.googleapis.com/maps/api/mapsjs/gen_204?csp_test=true'
          }).then((response) => {
            expect(response.status).to.equal(200)
        })

        cy.get('input[id="endereco"]').should('be.visible')
    })
})