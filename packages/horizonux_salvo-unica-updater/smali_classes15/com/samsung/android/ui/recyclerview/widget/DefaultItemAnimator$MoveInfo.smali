.class Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 59
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 60
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 61
    iput p4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 62
    iput p5, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 63
    return-void
.end method
