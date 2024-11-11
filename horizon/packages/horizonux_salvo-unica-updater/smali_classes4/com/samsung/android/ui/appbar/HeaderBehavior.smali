.class public abstract Lcom/samsung/android/ui/appbar/HeaderBehavior;
.super Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public activePointerId:I

.field public isBeingDragged:Z

.field public lastMotionY:I

.field public mLastInterceptTouchEvent:I

.field public mLastTouchEvent:I

.field public touchSlop:I

.field public velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 33
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 40
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 33
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    .line 41
    return-void
.end method


# virtual methods
.method public abstract canDragView(Landroid/view/View;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public final ensureVelocityTracker()V
    .locals 1

    .line 46
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 50
    :cond_0
    return-void
.end method

.method public getLastInterceptTouchEventEvent()I
    .locals 1

    .line 53
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->mLastInterceptTouchEvent:I

    return v0
.end method

.method public getLastTouchEventEvent()I
    .locals 1

    .line 57
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->mLastTouchEvent:I

    return v0
.end method

.method public abstract getMaxDragOffset(Landroid/view/View;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public abstract getTopBottomOffsetForScrollingSibling()I
.end method

.method public onInterceptTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
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

    .line 65
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    .line 69
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 70
    .local v0, "var4":I
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->mLastInterceptTouchEvent:I

    .line 71
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v3, :cond_1

    .line 72
    return v2

    .line 74
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 76
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 78
    const/4 v4, -0x1

    if-eq v0, v2, :cond_3

    .line 79
    if-ne v0, v1, :cond_2

    .line 80
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 81
    if-eq v0, v4, :cond_5

    .line 82
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 83
    if-eq v0, v4, :cond_5

    .line 84
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v0, v1

    .line 85
    iget v1, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    if-le v1, v3, :cond_5

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 87
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 95
    goto :goto_0

    .line 99
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 100
    iput v4, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 101
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 102
    .local v1, "var6":Landroid/view/VelocityTracker;
    if-eqz v1, :cond_5

    .line 103
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 108
    .end local v1    # "var6":Landroid/view/VelocityTracker;
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 109
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 110
    .local v1, "var5":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 111
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2, v1, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    .line 113
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->ensureVelocityTracker()V

    .line 118
    .end local v1    # "var5":I
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 119
    .local v1, "var6":Landroid/view/VelocityTracker;
    if-eqz v1, :cond_6

    .line 120
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 123
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    return v2
.end method

.method public onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
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

    .line 128
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    .line 132
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->mLastTouchEvent:I

    .line 133
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 136
    .local v0, "var4":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 138
    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    .line 139
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 140
    iget v4, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 141
    if-ne v0, v3, :cond_1

    .line 142
    return v2

    .line 145
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 146
    .local v2, "var5":I
    iget v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v3, v2

    .line 147
    .local v3, "var6":I
    move v0, v3

    .line 148
    iget-boolean v4, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    if-nez v4, :cond_3

    .line 149
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 150
    .local v4, "var7":I
    iget v5, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->touchSlop:I

    .line 151
    .local v5, "var8":I
    move v0, v3

    .line 152
    if-le v4, v5, :cond_3

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 154
    if-lez v3, :cond_2

    .line 155
    sub-int v0, v3, v5

    goto :goto_0

    .line 157
    :cond_2
    add-int v0, v3, v5

    .line 162
    .end local v4    # "var7":I
    .end local v5    # "var8":I
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v4, :cond_8

    .line 163
    iput v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    .line 164
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->scroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 169
    .end local v2    # "var5":I
    .end local v3    # "var6":I
    :cond_4
    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    .line 170
    goto :goto_1

    .line 174
    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 175
    iput v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 176
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 177
    .local v2, "var9":Landroid/view/VelocityTracker;
    if-eqz v2, :cond_8

    .line 178
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 179
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 183
    .end local v2    # "var9":Landroid/view/VelocityTracker;
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 184
    .restart local v3    # "var6":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v0, v4

    .line 185
    invoke-virtual {p1, p2, v3, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 189
    :cond_7
    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->lastMotionY:I

    .line 190
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->activePointerId:I

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->ensureVelocityTracker()V

    .line 194
    .end local v3    # "var6":I
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 195
    .restart local v2    # "var9":Landroid/view/VelocityTracker;
    if-eqz v2, :cond_9

    .line 196
    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 199
    :cond_9
    return v1

    .line 186
    .end local v2    # "var9":Landroid/view/VelocityTracker;
    .restart local v3    # "var6":I
    :cond_a
    :goto_2
    return v2
.end method

.method public final scroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/samsung/android/ui/appbar/HeaderBehavior;, "Lcom/samsung/android/ui/appbar/HeaderBehavior<TV;>;"
    .local p2, "var2":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public abstract setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation
.end method
