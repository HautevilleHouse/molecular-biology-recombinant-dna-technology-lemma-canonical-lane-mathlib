import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure LigationPackage where
  insertDna : Type u
  vectorDna : Type v
  compatibleEnds : Prop
  ligasePresent : Prop
  ligationSuccess : Prop

structure LigationEvidence (L : LigationPackage) where
  compatibleEndsClosed : L.compatibleEnds
  ligasePresentClosed : L.ligasePresent
  ligationSuccessClosed : L.ligationSuccess

structure LigationClosed (L : LigationPackage) : Prop :=
  endsMatch : L.compatibleEnds
  ligaseActive : L.ligasePresent
  productFormed : L.ligationSuccess

theorem ligation_closed_from_evidence
    (L : LigationPackage) (E : LigationEvidence L) : LigationClosed L := by
  exact {
    endsMatch := E.compatibleEndsClosed
    ligaseActive := E.ligasePresentClosed
    productFormed := E.ligationSuccessClosed
  }

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse