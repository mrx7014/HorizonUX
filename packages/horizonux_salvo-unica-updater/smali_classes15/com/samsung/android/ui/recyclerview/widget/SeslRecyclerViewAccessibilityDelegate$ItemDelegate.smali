.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SeslRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "recyclerViewDelegate"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 81
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 83
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 91
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
