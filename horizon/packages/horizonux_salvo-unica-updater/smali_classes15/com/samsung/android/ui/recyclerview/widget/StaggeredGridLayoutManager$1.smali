.class Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 81
    return-void
.end method
