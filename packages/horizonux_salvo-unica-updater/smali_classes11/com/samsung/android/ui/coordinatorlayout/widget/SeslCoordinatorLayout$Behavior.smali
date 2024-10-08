.class public abstract Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "SeslCoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1818
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1821
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .line 1826
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->getScrimOpacity(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1827
    const/4 v0, 0x1

    .local v0, "var3":Z
    goto :goto_0

    .line 1829
    .end local v0    # "var3":Z
    :cond_0
    const/4 v0, 0x0

    .line 1832
    .restart local v0    # "var3":Z
    :goto_0
    return v0
.end method

.method public getInsetDodgeRect(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1836
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public getScrimColor(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .line 1840
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/high16 v0, -0x1000000

    return v0
.end method

.method public getScrimOpacity(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)F
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .line 1844
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1848
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroidx/core/view/WindowInsetsCompat;",
            ")",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 1852
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-object p3
.end method

.method public onAttachedToLayoutParams(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1856
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onDependentViewChanged(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1859
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1863
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 0

    .line 1866
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1869
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1873
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 1877
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # F
    .param p5, "var5"    # F
    .param p6, "var6"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .line 1881
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # F
    .param p5, "var5"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 1885
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1890
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # [I
    .param p7, "var7"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 1893
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    if-nez p7, :cond_0

    .line 1894
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1897
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1901
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1905
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    if-nez p8, :cond_0

    .line 1906
    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1909
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .param p9, "var9"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 1912
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    aget v1, p9, v0

    add-int/2addr v1, p6

    aput v1, p9, v0

    .line 1913
    const/4 v0, 0x1

    aget v1, p9, v0

    add-int/2addr v1, p7

    aput v1, p9, v0

    .line 1914
    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 1915
    return-void
.end method

.method public onNestedScrollAccepted(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;
    .param p5, "var5"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1919
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 1922
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    if-nez p6, :cond_0

    .line 1923
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedScrollAccepted(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 1926
    :cond_0
    return-void
.end method

.method public onRequestChildRectangleOnScreen(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Z)Z"
        }
    .end annotation

    .line 1929
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1933
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1936
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;
    .param p5, "var5"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1941
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 1945
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    if-nez p6, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1950
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1953
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    if-nez p4, :cond_0

    .line 1954
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1957
    :cond_0
    return-void
.end method

.method public onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1960
    .local p0, "this":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;, "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method
