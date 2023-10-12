package kr.co.mood.Payment.VO;

public class KakaoCancelResponseVO {

	private String aid; // ��û ���� ��ȣ
    private String tid; // ���� ���� ��ȣ
    private String cid; // ������ �ڵ�
    private String status; // ���� ����
    private String partner_order_id; // ������ �ֹ� ��ȣ
    private String partner_user_id; // ������ ȸ�� ID
    private String payment_method_type; // ���� ����
    private AmountVO amount; // ���� �ݾ� ����, ���� ��û �����Ҷ� �̹� �����س���
    private ApprovedCancelAmount approved_cancel_amount; // �̹� ��û���� ��ҵ� �ݾ�
    private CanceledAmount canceled_amount; // ���� ��� �ݾ�
    private CancelAvailableAmount cancel_available_amount; // ���� ��� �ݾ�
    private String item_name; // ��ǰ �̸�
    private String item_code; // ��ǰ �ڵ�
    private int quantity; // ��ǰ ����
    private String created_at; // ���� �غ� ��û �ð�
    private String approved_at; // ���� ���� �ð�
    private String canceled_at; // ���� ��� �ð�
    private String payload; // ��� ��û �� ������ ��
    
    /**
     * �̹� ��û���� ��ҵ� �ݾ�
     */
    public static class ApprovedCancelAmount {

        private int total; // �̹� ��û���� ��ҵ� ��ü �ݾ�
        private int tax_free; // �̹� ��û���� ��ҵ� ����� �ݾ�
        private int vat; // �̹� ��û���� ��ҵ� �ΰ��� �ݾ�
        private int point; // �̹� ��û���� ��ҵ� ����Ʈ �ݾ�
        private int discount; // �̹� ��û���� ��ҵ� ���� �ݾ�
        private int green_deposit; // �� ������
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getTax_free() {
			return tax_free;
		}
		public void setTax_free(int tax_free) {
			this.tax_free = tax_free;
		}
		public int getVat() {
			return vat;
		}
		public void setVat(int vat) {
			this.vat = vat;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		public int getDiscount() {
			return discount;
		}
		public void setDiscount(int discount) {
			this.discount = discount;
		}
		public int getGreen_deposit() {
			return green_deposit;
		}
		public void setGreen_deposit(int green_deposit) {
			this.green_deposit = green_deposit;
		}
        
        
    }

    /**
     * ���� ��� �ݾ�
     */
    public static class CanceledAmount {

        private int total; // ��ҵ� ��ü ���� �ݾ�
        private int tax_free; // ��ҵ� ����� ���� �ݾ�
        private int vat; // ��ҵ� �ΰ��� ���� �ݾ�
        private int point; // ��ҵ� ����Ʈ ���� �ݾ�
        private int discount; // ��ҵ� ���� ���� �ݾ�
        private int green_deposit; // �� ������
        
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getTax_free() {
			return tax_free;
		}
		public void setTax_free(int tax_free) {
			this.tax_free = tax_free;
		}
		public int getVat() {
			return vat;
		}
		public void setVat(int vat) {
			this.vat = vat;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		public int getDiscount() {
			return discount;
		}
		public void setDiscount(int discount) {
			this.discount = discount;
		}
		public int getGreen_deposit() {
			return green_deposit;
		}
		public void setGreen_deposit(int green_deposit) {
			this.green_deposit = green_deposit;
		}
        
    }

    /**
     * ��� ��û �� ������ ��
     */
    public static class CancelAvailableAmount {

        private int total; // ��ü ��� ���� �ݾ�
        private int tax_free; // ��� ���� ����� �ݾ�
        private int vat; // ��� ���� �ΰ��� �ݾ�
        private int point; // ��� ���� ����Ʈ �ݾ�
        private int discount; // ��� ���� ���� �ݾ�
        private int green_deposit; // �� ������
        
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getTax_free() {
			return tax_free;
		}
		public void setTax_free(int tax_free) {
			this.tax_free = tax_free;
		}
		public int getVat() {
			return vat;
		}
		public void setVat(int vat) {
			this.vat = vat;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		public int getDiscount() {
			return discount;
		}
		public void setDiscount(int discount) {
			this.discount = discount;
		}
		public int getGreen_deposit() {
			return green_deposit;
		}
		public void setGreen_deposit(int green_deposit) {
			this.green_deposit = green_deposit;
		}
        
    }

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPartner_order_id() {
		return partner_order_id;
	}

	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}

	public String getPartner_user_id() {
		return partner_user_id;
	}

	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}

	public String getPayment_method_type() {
		return payment_method_type;
	}

	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}

	public AmountVO getAmount() {
		return amount;
	}

	public void setAmount(AmountVO amount) {
		this.amount = amount;
	}

	public ApprovedCancelAmount getApproved_cancel_amount() {
		return approved_cancel_amount;
	}

	public void setApproved_cancel_amount(ApprovedCancelAmount approved_cancel_amount) {
		this.approved_cancel_amount = approved_cancel_amount;
	}

	public CanceledAmount getCanceled_amount() {
		return canceled_amount;
	}

	public void setCanceled_amount(CanceledAmount canceled_amount) {
		this.canceled_amount = canceled_amount;
	}

	public CancelAvailableAmount getCancel_available_amount() {
		return cancel_available_amount;
	}

	public void setCancel_available_amount(CancelAvailableAmount cancel_available_amount) {
		this.cancel_available_amount = cancel_available_amount;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_code() {
		return item_code;
	}

	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getApproved_at() {
		return approved_at;
	}

	public void setApproved_at(String approved_at) {
		this.approved_at = approved_at;
	}

	public String getCanceled_at() {
		return canceled_at;
	}

	public void setCanceled_at(String canceled_at) {
		this.canceled_at = canceled_at;
	}

	public String getPayload() {
		return payload;
	}

	public void setPayload(String payload) {
		this.payload = payload;
	}
    
}
