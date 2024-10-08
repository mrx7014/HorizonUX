.class Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "SeslAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 567
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 568
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 569
    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 570
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 1

    .line 573
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_0

    .line 583
    const-string v0, "??"

    return-object v0

    .line 581
    :sswitch_0
    const-string v0, "mv"

    return-object v0

    .line 579
    :sswitch_1
    const-string v0, "up"

    return-object v0

    .line 577
    :sswitch_2
    const-string v0, "rm"

    return-object v0

    .line 575
    :sswitch_3
    const-string v0, "add"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 595
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 596
    return v0

    .line 598
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 604
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_2

    .line 605
    return v1

    .line 607
    :cond_2
    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 608
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-ne v3, v4, :cond_3

    .line 609
    return v0

    .line 612
    :cond_3
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_4

    .line 613
    return v1

    .line 615
    :cond_4
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_5

    .line 616
    return v1

    .line 618
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 619
    iget-object v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 620
    return v1

    .line 622
    :cond_6
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 623
    return v1

    .line 626
    :cond_7
    return v0

    .line 599
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 631
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 632
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    .line 633
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v2

    .line 634
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    return-object v0
.end method
