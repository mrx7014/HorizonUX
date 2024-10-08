.class Lcom/samsung/android/ui/recyclerview/widget/FastScroller$2;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->updateScrollPosition(II)V

    .line 93
    return-void
.end method
