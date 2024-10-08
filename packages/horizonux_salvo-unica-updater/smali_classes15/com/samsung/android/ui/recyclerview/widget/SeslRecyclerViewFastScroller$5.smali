.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$5;
.super Ljava/lang/Object;
.source "SeslRecyclerViewFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 174
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$5;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$5;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;I)V

    .line 177
    return-void
.end method
