.class public Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/viewpager/widget/SeslViewPager;

    .line 2975
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2976
    return-void
.end method


# virtual methods
.method public final canScroll()Z
    .locals 4

    .line 2979
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    iget-object v0, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2980
    .local v0, "var1":Landroidx/viewpager/widget/PagerAdapter;
    const/4 v1, 0x1

    .line 2981
    .local v1, "var2":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 2982
    :cond_0
    const/4 v1, 0x0

    .line 2985
    :cond_1
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2990
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2991
    const-class v0, Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2992
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2993
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2994
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    iget-object v0, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2995
    .local v0, "var3":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 2996
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2997
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    iget v1, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2998
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    iget v1, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3002
    .end local v0    # "var3":Landroidx/viewpager/widget/PagerAdapter;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3005
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3006
    const-class v0, Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3007
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3008
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3009
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3012
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3013
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3016
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 3019
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3020
    return v1

    .line 3023
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    .line 3024
    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    .line 3025
    return v2

    .line 3026
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3027
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    .line 3028
    .local v0, "var4":Landroidx/viewpager/widget/SeslViewPager;
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(I)V

    .line 3029
    return v1

    .line 3031
    .end local v0    # "var4":Landroidx/viewpager/widget/SeslViewPager;
    :cond_2
    return v2

    .line 3033
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3034
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    .line 3035
    .restart local v0    # "var4":Landroidx/viewpager/widget/SeslViewPager;
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(I)V

    .line 3036
    return v1

    .line 3038
    .end local v0    # "var4":Landroidx/viewpager/widget/SeslViewPager;
    :cond_4
    return v2
.end method
