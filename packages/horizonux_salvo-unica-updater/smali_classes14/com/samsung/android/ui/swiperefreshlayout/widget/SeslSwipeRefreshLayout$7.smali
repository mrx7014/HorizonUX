.class Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$7;
.super Ljava/lang/Object;
.source "SeslSwipeRefreshLayout.java"

# interfaces
.implements Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setRefreshOnce(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    .line 1003
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$7;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$7;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setRefreshing(Z)V

    .line 1006
    const-string v0, "SwipeRefreshLayout"

    const-string v1, "OnAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method
