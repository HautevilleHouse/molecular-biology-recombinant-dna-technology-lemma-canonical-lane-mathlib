import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure LigationReactionPackage where
  insertDna : Type
  vectorDna : Type
  ligasePresent : Bool
  complementaryEnds : Bool
  atpPresent : Bool

def ligationOutcome (L : LigationReactionPackage) : Prop :=
  L.ligasePresent ∧ L.complementaryEnds ∧ L.atpPresent

structure LigationReactionEvidence (L : LigationReactionPackage) where
  ligasePresentClosed : L.ligasePresent
  complementaryEndsClosed : L.complementaryEnds
  atpPresentClosed : L.atpPresent

theorem ligation_outcome_from_evidence (L : LigationReactionPackage) (E : LigationReactionEvidence L) :
    ligationOutcome L := by
  exact And.intro E.ligasePresentClosed (And.intro E.complementaryEndsClosed E.atpPresentClosed)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
