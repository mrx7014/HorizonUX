.class Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "this$0"    # Landroidx/appcompat/widget/SeslAppCompatSpinner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 747
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    .line 748
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 744
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 750
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 751
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 754
    new-instance v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/SeslAppCompatSpinner;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 764
    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    .line 741
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 8

    .line 784
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 785
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 786
    .local v1, "hOffset":I
    if-eqz v0, :cond_1

    .line 787
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 788
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 790
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v3, v3, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 793
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getPaddingLeft()I

    move-result v2

    .line 794
    .local v2, "spinnerPaddingLeft":I
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getPaddingRight()I

    move-result v3

    .line 795
    .local v3, "spinnerPaddingRight":I
    iget-object v4, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getWidth()I

    move-result v4

    .line 796
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget v5, v5, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 797
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v6, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 798
    .local v5, "contentWidth":I
    iget-object v6, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v6}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v7, v7, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v7, v7, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 799
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_2

    .line 800
    move v5, v6

    .line 802
    :cond_2
    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 803
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget v5, v5, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 804
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 806
    :cond_4
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget v5, v5, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 808
    :goto_2
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-static {v5}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 809
    sub-int v5, v4, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_3

    .line 811
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v1, v5

    .line 813
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 814
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 774
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 870
    iget v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 860
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 768
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 769
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 770
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0
    .param p1, "px"    # I

    .line 865
    iput p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 866
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 779
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 780
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 818
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 820
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 822
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 823
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 824
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 825
    .local v1, "listView":Landroid/widget/ListView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 826
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 827
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 830
    :cond_0
    if-eqz v0, :cond_1

    .line 831
    return-void

    .line 834
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 835
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 836
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 837
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_2

    .line 838
    new-instance v3, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V

    .line 846
    .local v3, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 847
    new-instance v4, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 857
    .end local v3    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_2
    return-void
.end method
