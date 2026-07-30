import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.RestrictionEnzymeDigestion

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure LigationTransformationPackage where
  insertPrepared : Prop
  vectorPrepared : Prop
  ligaseAdded : Prop
  ligationSuccessful : Prop
  competentCells : Prop
  transformationSuccessful : Prop

structure LigationTransformationEvidence (L : LigationTransformationPackage) where
  insertPreparedClosed : L.insertPrepared
  vectorPreparedClosed : L.vectorPrepared
  ligaseAddedClosed : L.ligaseAdded
  ligationSuccessfulClosed : L.ligationSuccessful
  competentCellsClosed : L.competentCells
  transformationSuccessfulClosed : L.transformationSuccessful

def LigationTransformationClosed (L : LigationTransformationPackage) : Prop :=
  L.ligationSuccessful ∧ L.transformationSuccessful

theorem ligation_transformation_closed_from_evidence
    (L : LigationTransformationPackage) (E : LigationTransformationEvidence L) :
    LigationTransformationClosed L := by
  exact And.intro E.ligationSuccessfulClosed E.transformationSuccessfulClosed

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
