.class Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 847
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 850
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 851
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 852
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 854
    :cond_0
    return-void
.end method
