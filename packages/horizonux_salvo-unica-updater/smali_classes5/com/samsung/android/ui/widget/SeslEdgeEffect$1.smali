.class Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;
.super Ljava/lang/Object;
.source "SeslEdgeEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->access$002(Lcom/samsung/android/ui/widget/SeslEdgeEffect;Z)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->access$100(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-static {v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->access$200(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->access$300(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    return-void
.end method
