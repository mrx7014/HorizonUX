.class Lcom/samsung/android/ui/app/SeslAlertController$4;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

.field final synthetic val$finalVar4:Landroid/view/View;

.field final synthetic val$finalVar5:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$4;->this$0:Lcom/samsung/android/ui/app/SeslAlertController;

    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController$4;->val$finalVar4:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/ui/app/SeslAlertController$4;->val$finalVar5:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "var1"    # Landroid/widget/AbsListView;
    .param p2, "var2x"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 351
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$4;->val$finalVar4:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$4;->val$finalVar5:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 352
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "var1"    # Landroid/widget/AbsListView;
    .param p2, "var2x"    # I

    .line 355
    return-void
.end method
