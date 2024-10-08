.class public Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 30
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 4

    .line 38
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 47
    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 44
    nop

    .line 52
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 54
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 90
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v3, p3, :cond_0

    .line 91
    add-int/2addr v2, v0

    .line 92
    .local v2, "previousEnd":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 93
    add-int v0, p1, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 94
    return-void

    .line 96
    .end local v2    # "previousEnd":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 97
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 98
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 99
    iput-object p3, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 100
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 101
    return-void
.end method

.method public onInserted(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 58
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    .line 59
    add-int/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 60
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 64
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 65
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 66
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 67
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 86
    return-void
.end method

.method public onRemoved(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 71
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    .line 72
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 73
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 74
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 77
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 78
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 79
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 80
    return-void
.end method
