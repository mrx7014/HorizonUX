.class Lcom/samsung/android/ui/app/SeslAlertController$1;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 74
    .local v0, "var2":Lcom/samsung/android/ui/app/SeslAlertController;
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 75
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 76
    .local v1, "var4":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 77
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 78
    .local v2, "var3":Landroid/os/Message;
    goto :goto_0

    .line 82
    .end local v1    # "var4":Landroid/os/Message;
    .end local v2    # "var3":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 83
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 84
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 85
    .restart local v1    # "var4":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 86
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 87
    .restart local v2    # "var3":Landroid/os/Message;
    goto :goto_0

    .line 91
    .end local v1    # "var4":Landroid/os/Message;
    .end local v2    # "var3":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 92
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 93
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 94
    .local v1, "var3":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 95
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 96
    .end local v1    # "var3":Landroid/os/Message;
    .restart local v2    # "var3":Landroid/os/Message;
    goto :goto_0

    .line 100
    .end local v2    # "var3":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    .line 103
    .end local v0    # "var2":Lcom/samsung/android/ui/app/SeslAlertController;
    .restart local v2    # "var3":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    .line 108
    .local v0, "var5":Lcom/samsung/android/ui/app/SeslAlertController;
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method
