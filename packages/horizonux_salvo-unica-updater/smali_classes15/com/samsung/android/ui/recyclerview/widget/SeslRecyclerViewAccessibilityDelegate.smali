.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SeslRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;
    }
.end annotation


# instance fields
.field final mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 32
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 34
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    const-class v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 66
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 68
    .local v0, "rv":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 72
    .end local v0    # "rv":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 56
    const-class v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 60
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldIgnore()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
