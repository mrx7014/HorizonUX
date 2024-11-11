.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrapData"
.end annotation


# instance fields
.field mBindRunningAverageNs:J

.field mCreateRunningAverageNs:J

.field mMaxScrap:I

.field final mScrapHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 9239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 9235
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 9236
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 9237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 9240
    return-void
.end method
