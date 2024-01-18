-- Creates a trigger that decreases the quantity
-- of an item after adding a new order
CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW UPDATE items
SET quantity = quantity - NEW.quantity
WHERE id = NEW.item_id;
