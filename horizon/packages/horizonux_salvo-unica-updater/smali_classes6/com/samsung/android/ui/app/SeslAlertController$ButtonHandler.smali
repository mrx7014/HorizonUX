.class final Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field public static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field public mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/DialogInterface;

    .line 1354
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1355
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 1356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "var1"    # Landroid/os/Message;

    .line 1359
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1360
    .local v0, "var2":I
    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1361
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1362
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1368
    :cond_1
    :goto_0
    return-void
.end method
