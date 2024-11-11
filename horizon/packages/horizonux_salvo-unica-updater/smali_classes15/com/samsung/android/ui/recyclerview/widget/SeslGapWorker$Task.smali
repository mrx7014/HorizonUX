.class Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
.super Ljava/lang/Object;
.source "SeslGapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->immediate:Z

    .line 42
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->viewVelocity:I

    .line 43
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->distanceToItem:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->view:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 45
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->position:I

    .line 46
    return-void
.end method
