.class Lcom/samsung/android/ui/app/SeslAlertController$2;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController;

.field final synthetic val$finalVar:Landroid/view/View;

.field final synthetic val$finalVar1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$2;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController$2;->val$finalVar:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/ui/app/SeslAlertController$2;->val$finalVar1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Lcom/samsung/android/ui/widget/SeslNestedScrollView;IIII)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    .param p2, "var2x"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 334
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$2;->val$finalVar:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$2;->val$finalVar1:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 335
    return-void
.end method
