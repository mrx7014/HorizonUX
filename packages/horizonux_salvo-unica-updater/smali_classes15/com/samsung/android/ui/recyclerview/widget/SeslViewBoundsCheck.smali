.class Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;
.super Ljava/lang/Object;
.source "SeslViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

.field final mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    .line 37
    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "preferredBoundFlags"    # I
    .param p4, "acceptableBoundFlags"    # I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getParentStart()I

    move-result v0

    .line 102
    .local v0, "start":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getParentEnd()I

    move-result v1

    .line 103
    .local v1, "end":I
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 104
    .local v2, "next":I
    :goto_0
    const/4 v3, 0x0

    .line 105
    .local v3, "acceptableMatch":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_3

    .line 106
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 107
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v6

    .line 108
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v7, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v7

    .line 109
    .local v7, "childEnd":I
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, v0, v1, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 110
    if-eqz p3, :cond_1

    .line 111
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 112
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 113
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    return-object v5

    .line 117
    :cond_1
    if-eqz p4, :cond_2

    .line 118
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 119
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 120
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    move-object v3, v5

    .line 105
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_2
    add-int/2addr v4, v2

    goto :goto_1

    .line 125
    .end local v4    # "i":I
    :cond_3
    return-object v3
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "boundsFlags"    # I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 130
    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->mBoundFlags:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
