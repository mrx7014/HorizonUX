.class Lcom/samsung/android/ui/app/SeslAlertController$6;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController;

.field final synthetic val$var1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 695
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$6;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController$6;->val$var1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "var1x"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .param p9, "var9"    # I

    .line 697
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertController$6$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/app/SeslAlertController$6$1;-><init>(Lcom/samsung/android/ui/app/SeslAlertController$6;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method
