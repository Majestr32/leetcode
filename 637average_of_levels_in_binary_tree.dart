class Solution {
  List<int?> allValues = [];
  List<double> averageOfLevels(TreeNode? root) {
    int h = height(root);
 
    List<List<int>> elements = List.generate(h, (index) => []);
    getLevelElements(root, 0, elements);
    List<double> res = [];
    for(int level = 0; level < h; level++){
      res.add(elements[level].fold<double>(0, (previousValue, element) => previousValue + element) / elements[level].length);
    }
 
    return res;
  }

  int height(TreeNode? root)
    {
        if (root == null) {
            return 0;
        }
        else {
            int lheight = height(root.left);
            int rheight = height(root.right);
 
            if (lheight > rheight) {
                return (lheight + 1);
            }
            else {
                return (rheight + 1);
            }
        }
    }
 

  void getLevelElements(TreeNode? node, int level, List<List<int>> elements){
    if (node == null){
        return; 
    }
 
    elements[level].add(node.val);
  
    getLevelElements(node.left, level + 1, elements);
    getLevelElements(node.right, level + 1, elements);
  }
}