CREATE FUNCTION AveragePriceInRec(
       p_iTotalPrice INT , p_iTotQty INT)
RETURNS INT DETERMINISTIC
RETURN IF(p_iTotQty = 0, 0, 
	ROUND(p_iTotalPrice / p_iTotQty, 0)) ;
