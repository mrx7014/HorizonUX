.class Lcom/samsung/android/ui/widget/SeslEdgeEffect$2;
.super Landroid/os/Handler;
.source "SeslEdgeEffect.java"


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
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslEdgeEffect;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 93
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
