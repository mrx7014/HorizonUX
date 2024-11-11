.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9089
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    .line 9090
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 9093
    return-void
.end method

.method private getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    .locals 3
    .param p1, "var1"    # I

    .line 9096
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    .line 9097
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    move-object v1, v0

    .line 9098
    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_0

    .line 9099
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v1, v2

    .line 9100
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9103
    :cond_0
    return-object v1
.end method


# virtual methods
.method attach(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 9107
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    .line 9108
    return-void
.end method

.method public clear()V
    .locals 2

    .line 9111
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9112
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9115
    .end local v0    # "var1":I
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .line 9118
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    .line 9119
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # J

    .line 9122
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 9123
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 9124
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # J

    .line 9127
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 9128
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 9129
    return-void
.end method

.method public getRecycledView(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 3
    .param p1, "var1"    # I

    .line 9132
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    .line 9134
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9135
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 9136
    .local v1, "var4":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9137
    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 9138
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    const/4 v1, 0x0

    .line 9141
    .restart local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    return-object v1
.end method

.method public getRecycledViewCount(I)I
    .locals 1
    .param p1, "var1"    # I

    .line 9145
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p3, "var3"    # Z

    .line 9149
    if-eqz p1, :cond_0

    .line 9150
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->detach()V

    .line 9153
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 9154
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->clear()V

    .line 9157
    :cond_1
    if-eqz p2, :cond_2

    .line 9158
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->attach(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 9161
    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9164
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 9165
    .local v0, "var2":I
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 9166
    .local v1, "var3":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 9167
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->resetInternal()V

    .line 9168
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9171
    :cond_0
    return-void
.end method

.method runningAverage(JJ)J
    .locals 6
    .param p1, "var1"    # J
    .param p3, "var3"    # J

    .line 9174
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 9175
    const-wide/16 v0, 0x4

    div-long v2, p1, v0

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long v0, p3, v0

    add-long p3, v2, v0

    .line 9178
    :cond_0
    return-wide p3
.end method

.method public setMaxRecycledViews(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 9182
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 9183
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 9184
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 9186
    .local v1, "var4":Ljava/util/ArrayList;
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 9187
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9190
    :cond_0
    return-void
.end method

.method size()I
    .locals 5

    .line 9193
    const/4 v0, 0x0

    .line 9196
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9197
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 9198
    .local v2, "var3":Ljava/util/ArrayList;
    move v3, v0

    .line 9199
    .local v3, "var4":I
    if-eqz v2, :cond_0

    .line 9200
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v3, v0, v4

    .line 9203
    :cond_0
    nop

    .end local v2    # "var3":Ljava/util/ArrayList;
    add-int/lit8 v1, v1, 0x1

    .line 9196
    move v0, v3

    goto :goto_0

    .line 9206
    .end local v1    # "var2":I
    .end local v3    # "var4":I
    :cond_1
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # J
    .param p4, "var4"    # J

    .line 9210
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 9212
    .local v0, "var6":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    .line 9213
    const/4 v2, 0x0

    .local v2, "var8":Z
    goto :goto_0

    .line 9215
    .end local v2    # "var8":Z
    :cond_0
    const/4 v2, 0x1

    .line 9218
    .restart local v2    # "var8":Z
    :goto_0
    return v2
.end method

.method willCreateInTime(IJJ)Z
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # J
    .param p4, "var4"    # J

    .line 9222
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getScrapDataForType(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 9224
    .local v0, "var6":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    .line 9225
    const/4 v2, 0x0

    .local v2, "var8":Z
    goto :goto_0

    .line 9227
    .end local v2    # "var8":Z
    :cond_0
    const/4 v2, 0x1

    .line 9230
    .restart local v2    # "var8":Z
    :goto_0
    return v2
.end method
