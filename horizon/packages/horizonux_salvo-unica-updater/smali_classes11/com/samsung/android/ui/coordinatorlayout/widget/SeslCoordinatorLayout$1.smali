.class Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$1;
.super Ljava/lang/Object;
.source "SeslCoordinatorLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    .line 1786
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$1;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1788
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$1;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
