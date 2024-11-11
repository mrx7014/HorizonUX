.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7121
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 7124
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7127
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 7130
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 7131
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7134
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 7137
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7140
    return-void
.end method
