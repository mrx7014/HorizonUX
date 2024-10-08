.class public Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field public horizontalOffsetEnabled:Z

.field public layoutLeft:I

.field public layoutTop:I

.field public offsetLeft:I

.field public offsetTop:I

.field public verticalOffsetEnabled:Z

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    .line 32
    iput-object p1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 33
    return-void
.end method


# virtual methods
.method public getLayoutTop()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->layoutTop:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->layoutTop:I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 47
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetLeft:I

    if-eq v0, p1, :cond_0

    .line 51
    iput p1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetTop:I

    if-eq v0, p1, :cond_0

    .line 61
    iput p1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetTop:I

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateOffsets()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 71
    .local v0, "var1":Landroid/view/View;
    iget v1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 73
    iget v1, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->offsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 74
    return-void
.end method
