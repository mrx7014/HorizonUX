.class Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;
.super Ljava/lang/Object;
.source "SeslChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 4
    .param p1, "index"    # I

    .line 284
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-eqz v0, :cond_1

    .line 286
    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->clear(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 292
    :cond_1
    :goto_0
    return-void
.end method

.method countOnesBefore(I)I
    .locals 6
    .param p1, "index"    # I

    .line 355
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    .line 356
    if-lt p1, v1, :cond_0

    .line 357
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 359
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 361
    :cond_1
    if-ge p1, v1, :cond_2

    .line 362
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 364
    :cond_2
    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method get(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 295
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->ensureNext()V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v0

    return v0

    .line 299
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method insert(IZ)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 311
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->ensureNext()V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->insert(IZ)V

    goto :goto_2

    .line 315
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 316
    .local v2, "lastBit":Z
    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    .line 317
    .local v7, "mask":J
    and-long v5, v0, v7

    .line 318
    .local v5, "before":J
    not-long v9, v7

    and-long/2addr v0, v9

    shl-long/2addr v0, v3

    .line 319
    .local v0, "after":J
    or-long v9, v5, v0

    iput-wide v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 320
    if-eqz p2, :cond_2

    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->set(I)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->clear(I)V

    .line 325
    :goto_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-eqz v3, :cond_4

    .line 326
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->ensureNext()V

    .line 327
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->insert(IZ)V

    .line 330
    .end local v0    # "after":J
    .end local v2    # "lastBit":Z
    .end local v5    # "before":J
    .end local v7    # "mask":J
    :cond_4
    :goto_2
    return-void
.end method

.method remove(I)Z
    .locals 11
    .param p1, "index"    # I

    .line 333
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->ensureNext()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    move-result v0

    return v0

    .line 337
    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 338
    .local v2, "mask":J
    iget-wide v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    .line 339
    .local v6, "value":Z
    :goto_0
    not-long v9, v2

    and-long/2addr v4, v9

    iput-wide v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 340
    sub-long/2addr v2, v0

    .line 341
    and-long v0, v4, v2

    .line 342
    .local v0, "before":J
    not-long v9, v2

    and-long/2addr v4, v9

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 343
    .local v4, "after":J
    or-long v9, v0, v4

    iput-wide v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 344
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-eqz v7, :cond_3

    .line 345
    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->set(I)V

    .line 348
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    .line 350
    :cond_3
    return v6
.end method

.method reset()V
    .locals 2

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 305
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->reset()V

    .line 308
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 4
    .param p1, "index"    # I

    .line 269
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->ensureNext()V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->set(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    .line 275
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mNext:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
