update MenuPrincipal set Form = 'TfCadEmpresas' where id = 3
update MenuPrincipal set Form = 'TfCadUsuarios' where id = 4
update MenuPrincipal set Form = 'TfCadPaises'   where id = 5


select * from MenuPrincipal order by id, ParentId
