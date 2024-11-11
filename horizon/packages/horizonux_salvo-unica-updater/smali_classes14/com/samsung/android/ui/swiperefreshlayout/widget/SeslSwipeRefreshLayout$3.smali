.class Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 172
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$3;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # Landroid/view/animation/Transformation;

    .line 174
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$3;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->moveToStart(F)V

    .line 175
    return-void
.end method
