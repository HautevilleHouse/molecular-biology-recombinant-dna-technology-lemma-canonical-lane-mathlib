import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ExpressionVectorConstruction where
  promoterRegion : Prop
  multipleCloningSite : Prop
  originOfReplication : Prop
  selectionMarker : Prop
  terminatorSequence : Prop

structure ExpressionVectorConstructionEvidence (E : ExpressionVectorConstruction) where
  promoterRegionClosed : E.promoterRegion
  multipleCloningSiteClosed : E.multipleCloningSite
  originOfReplicationClosed : E.originOfReplication
  selectionMarkerClosed : E.selectionMarker
  terminatorSequenceClosed : E.terminatorSequence

def ExpressionVectorConstructionClosed (E : ExpressionVectorConstruction) : Prop :=
  E.promoterRegion ∧
  E.multipleCloningSite ∧
  E.originOfReplication ∧
  E.selectionMarker ∧
  E.terminatorSequence

theorem expression_vector_construction_closed_from_evidence
    (E : ExpressionVectorConstruction) (Ev : ExpressionVectorConstructionEvidence E) :
    ExpressionVectorConstructionClosed E := by
  exact And.intro Ev.promoterRegionClosed
    (And.intro Ev.multipleCloningSiteClosed
      (And.intro Ev.originOfReplicationClosed
        (And.intro Ev.selectionMarkerClosed Ev.terminatorSequenceClosed)))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
