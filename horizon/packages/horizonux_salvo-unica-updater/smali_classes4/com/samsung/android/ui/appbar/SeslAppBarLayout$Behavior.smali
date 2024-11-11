.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout$Behavior;
.super Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
.source "SeslAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<",
        "Lcom/samsung/android/ui/appbar/SeslAppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1691
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;-><init>()V

    .line 1692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1695
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1696
    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z
    .locals 0

    .line 1690
    invoke-super {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->canDragView(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getMaxDragOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I
    .locals 0

    .line 1690
    invoke-super {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 1690
    invoke-super {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Z
    .locals 0

    .line 1690
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIII)Z
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;FF)Z
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;II[II)V
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;IIIII)V
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/os/Parcelable;)V
    .locals 0

    .line 1690
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Landroid/os/Parcelable;
    .locals 0

    .line 1690
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 1690
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1690
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;III)I
    .locals 0

    .line 1690
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;III)I

    move-result p1

    return p1
.end method
