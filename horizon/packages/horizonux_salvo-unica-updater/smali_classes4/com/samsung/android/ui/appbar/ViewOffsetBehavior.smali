.class public Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;
.super Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public tempLeftRightOffset:I

.field public tempTopBottomOffset:I

.field public viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 26
    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 33
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 26
    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 34
    return-void
.end method


# virtual methods
.method public getTopAndBottomOffset()I
    .locals 2

    .line 37
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    .line 39
    .local v0, "var1":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 42
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, 0x0

    .line 45
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method

.method public layoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 50
    return-void
.end method

.method public onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->layoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 59
    iget p3, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 60
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 61
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    invoke-virtual {v1, p3}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 62
    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 65
    :cond_1
    iget p3, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 66
    if-eqz p3, :cond_2

    .line 67
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    invoke-virtual {v1, p3}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 68
    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 71
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 2
    .param p1, "var1"    # I

    .line 75
    .local p0, "this":Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;, "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    .line 76
    .local v0, "var2":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v1

    return v1

    .line 79
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 80
    const/4 v1, 0x0

    return v1
.end method
