import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure LigationReaction where
  vectorConcentration : Float
  insertConcentration : Float
  molarRatio : Float
  temperature : Float
  atpConcentration : Float

structure LigationReactionEvidence (L : LigationReaction) where
  vectorConcentrationClosed : L.vectorConcentration > 0
  insertConcentrationClosed : L.insertConcentration > 0
  molarRatioClosed : L.molarRatio ≥ 1
  temperatureClosed : L.temperature ≥ 16.0 ∧ L.temperature ≤ 37.0
  atpConcentrationClosed : L.atpConcentration > 0

def LigationReactionClosed (L : LigationReaction) : Prop :=
  L.vectorConcentration > 0 ∧
  L.insertConcentration > 0 ∧
  L.molarRatio ≥ 1 ∧
  (L.temperature ≥ 16.0 ∧ L.temperature ≤ 37.0) ∧
  L.atpConcentration > 0

theorem ligation_reaction_closed_from_evidence
    (L : LigationReaction) (E : LigationReactionEvidence L) :
    LigationReactionClosed L := by
  exact And.intro E.vectorConcentrationClosed
    (And.intro E.insertConcentrationClosed
      (And.intro E.molarRatioClosed
        (And.intro E.temperatureClosed E.atpConcentrationClosed)))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
