SELECT f.id, w.ID, w_t.value, w_form.ID, w_t_form.value FROM fields f
INNER JOIN activities a ON f.nextActivityID = a.ID
INNER JOIN workflowLayers w_l ON a.workflowLayerID = w_l.ID
INNER JOIN workflows w ON w_l.workflowID = w.id
INNER JOIN translationObjects w_t_o ON w_t_o.id = w.nameTranslationObjectID
INNER JOIN translations w_t ON w_t.translationObjectID = w_t_o.id
INNER JOIN fieldSets f_s ON f.fieldsetID = f_s.ID
INNER JOIN activities a_form ON f_s.activityID = a_form.ID
INNER JOIN workflowLayers w_l_form ON a_form.workflowLayerID = w_l_form.ID
INNER JOIN workflows w_form ON w_l_form.workflowID = w_form.ID
INNER JOIN translationObjects w_t_o_form ON w_t_o_form.id = w_form.nameTranslationObjectID
INNER JOIN translations w_t_form ON w_t_form.translationObjectID = w_t_o_form.id
WHERE w.ID <> w_form.ID
AND w_t.languageID = 1
AND w_t_form.languageID = 1

SELECT f.ID, f.visible FROM fields f
WHERE f.nextActivityID NOT IN
(SELECT a.ID FROM activities a)

SELECT f.ID, f.visible FROM fields f
INNER JOIN fieldSets fs ON f.fieldsetID = fs.ID
WHERE fs.activityID NOT IN
(SELECT a.ID FROM activities a)