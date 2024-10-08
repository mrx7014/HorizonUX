.class public Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SeslCoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field public mAnchorDirectChild:Landroid/view/View;

.field public mAnchorId:I

.field public mAnchorView:Landroid/view/View;

.field public mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

.field public mBehaviorResolved:Z

.field public mBehaviorTag:Ljava/lang/Object;

.field public mDidAcceptNestedScrollNonTouch:Z

.field public mDidAcceptNestedScrollTouch:Z

.field public mDidBlockInteraction:Z

.field public mDidChangeAfterNestedScroll:Z

.field public mInsetOffsetX:I

.field public mInsetOffsetY:I

.field public final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2013
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1993
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1994
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1995
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 1996
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1999
    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2002
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2010
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2014
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 2017
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1993
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1994
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1995
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 1996
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1999
    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2002
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2010
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2018
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslCoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2019
    .local v2, "var3":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 2020
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2021
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2022
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 2023
    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2024
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2025
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2026
    if-eqz v1, :cond_0

    .line 2027
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2030
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2031
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2032
    .local v0, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;)V

    .line 2036
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2039
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1993
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1994
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1995
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 1996
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1999
    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2002
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2010
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2040
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2043
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1993
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1994
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1995
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 1996
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1999
    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2002
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2010
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2044
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 2047
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1993
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1994
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 1995
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    .line 1996
    iput v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1999
    iput v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2002
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2010
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2048
    return-void
.end method


# virtual methods
.method public checkAnchorChanged()Z
    .locals 2

    .line 2052
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2053
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 2055
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 2058
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public dependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/view/View;

    .line 2063
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2065
    .local v0, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->layoutDependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2066
    :cond_0
    const/4 v1, 0x0

    .line 2067
    .local v1, "var5":Z
    return v1

    .line 2071
    .end local v0    # "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v1    # "var5":Z
    :cond_1
    const/4 v0, 0x1

    .line 2072
    .local v0, "var5":Z
    return v0
.end method

.method public didBlockInteraction()Z
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2080
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method public findAnchorView(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;

    .line 2084
    iget v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2086
    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2087
    return-object v0

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2090
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V

    .line 2093
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnchorId()I
    .locals 1

    .line 2098
    iget v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    return-object v0
.end method

.method public getChangedAfterNestedScroll()Z
    .locals 1

    .line 2106
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method public getLastChildRect()Landroid/graphics/Rect;
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isBlockingInteractionBelow(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Z
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;

    .line 2114
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2115
    .local v0, "var3":Z
    if-eqz v0, :cond_0

    .line 2116
    const/4 v1, 0x1

    return v1

    .line 2118
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2120
    .local v1, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v1, :cond_1

    .line 2121
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->blocksInteractionBelow(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Z

    move-result v2

    .local v2, "var5":Z
    goto :goto_0

    .line 2123
    .end local v2    # "var5":Z
    :cond_1
    const/4 v2, 0x0

    .line 2126
    .restart local v2    # "var5":Z
    :goto_0
    or-int/2addr v2, v0

    .line 2127
    iput-boolean v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2128
    return v2
.end method

.method public isNestedScrollAccepted(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 2133
    if-eqz p1, :cond_1

    .line 2134
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    :goto_0
    return v0

    .line 2136
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    return v0
.end method

.method public resetChangedAfterNestedScroll()V
    .locals 1

    .line 2141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2142
    return-void
.end method

.method public resetNestedScroll(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 2145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 2146
    return-void
.end method

.method public resetTouchBehaviorTracking()V
    .locals 1

    .line 2149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2150
    return-void
.end method

.method public final resolveAnchorView(Landroid/view/View;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    .line 2153
    iget v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2154
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2155
    .local v0, "var3":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2156
    invoke-virtual {p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2157
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2158
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_1

    .line 2160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2161
    .local v1, "var5":Ljava/lang/StringBuilder;
    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    invoke-virtual {p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2165
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2167
    .end local v1    # "var5":Ljava/lang/StringBuilder;
    :cond_1
    if-ne v0, p2, :cond_3

    .line 2168
    invoke-virtual {p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2169
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2170
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_1

    .line 2172
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2175
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "var4":Landroid/view/ViewParent;
    :goto_0
    if-eq v2, p2, :cond_7

    if-eqz v2, :cond_7

    .line 2176
    if-ne v2, p1, :cond_5

    .line 2177
    invoke-virtual {p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2178
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2179
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2180
    return-void

    .line 2183
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2186
    :cond_5
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_6

    .line 2187
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 2175
    :cond_6
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2191
    .end local v2    # "var4":Landroid/view/ViewParent;
    :cond_7
    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2193
    :goto_1
    return-void
.end method

.method public setBehavior(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2196
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2197
    .local v0, "var2":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eq v0, p1, :cond_1

    .line 2198
    if-eqz v0, :cond_0

    .line 2199
    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2202
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 2203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2205
    if-eqz p1, :cond_1

    .line 2206
    invoke-virtual {p1, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;)V

    .line 2210
    :cond_1
    return-void
.end method

.method public setChangedAfterNestedScroll(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 2213
    iput-boolean p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2214
    return-void
.end method

.method public setLastChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Rect;

    .line 2217
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2218
    return-void
.end method

.method public setNestedScrollAccepted(IZ)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 2221
    if-eqz p1, :cond_0

    .line 2222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2223
    iput-boolean p2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_0

    .line 2226
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    .line 2229
    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldDodge(Landroid/view/View;I)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 2232
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v0, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 2234
    .local v0, "var3":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v1, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    .line 2235
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 2237
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 2240
    .restart local v1    # "var4":Z
    :goto_0
    return v1
.end method

.method public final verifyAnchorView(Landroid/view/View;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    .line 2244
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2245
    return v2

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2249
    .local v0, "var3":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "var4":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_4

    .line 2250
    if-eqz v1, :cond_3

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 2256
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2257
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 2249
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2251
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2252
    iput-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2253
    return v2

    .line 2261
    .end local v1    # "var4":Landroid/view/ViewParent;
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2262
    const/4 v1, 0x1

    return v1
.end method
