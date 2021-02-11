# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l3 = ListNode.new
  l3_head = l3
  carry = 0
  while (l1 || l2 || carry != 0) do
    sum = if l1 && l2
            l1.val + l2.val + carry
          elsif l1
            l1.val + carry
          elsif l2
            l2.val + carry
          else
            carry
          end

    l3.val = sum % 10
    carry = sum / 10

    l1 = l1.next if l1
    l2 = l2.next if l2
    if l1 || l2 || carry != 0
      l3.next = ListNode.new
      l3 = l3.next
    end
  end

  l3_head
end
